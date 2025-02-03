
-- currently playing sounds per mapblock
-- mapblock_pos[number]
local currently_playing = {}

-- clear the currently playing tracker every few seconds
local function clear_currently_playing()
    currently_playing = {}
    minetest.after(5, clear_currently_playing)
end
minetest.after(5, clear_currently_playing)

-- mapblock resolution
local function get_key(pos)
    return minetest.pos_to_string(vector.round(vector.divide(pos, 16)))
end

local function add_currently_playing(pos, value)
    local key = get_key(pos)
    local count = currently_playing[key]
    if not count then
        -- new entry
        count = value
    else
        -- update entry
        count = count + value
    end
    currently_playing[key] = count
end

-- limit plaing sounds per mapblock
local function can_play(pos)
    local count = currently_playing[get_key(pos)]
    return not count or count < 25
end

-- register ambience sounds with node-timer
function scifi_nodes.register_ambience(nodename, soundname, opts)
    assert(opts)
    opts.interval = opts.interval or 60

    local function play(pos)
        minetest.sound_play(soundname ,{
            max_hear_distance = opts.max_hear_distance or 16,
            pos = pos,
            gain = opts.gain or 0.7
        })
    end

    minetest.override_item(nodename, {
        on_timer = function(pos)
            local timer = minetest.get_node_timer(pos)

            if not can_play(pos) then
                -- too many sounds playing, recheck again soon
                timer:start(1)
                return
            end

            -- increment usage count
            add_currently_playing(pos, 1)
            play(pos)

            -- restart timer
            timer:start(opts.interval)
        end,
        on_construct = function(pos)
            play(pos)
            local timer = minetest.get_node_timer(pos)
            timer:start(opts.interval)
        end
    })
end
