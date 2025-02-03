![Scifi nodes](screenshot.png)

# scifi_nodes

![](https://github.com/D00Med/scifi_nodes/workflows/luacheck/badge.svg)
![](https://github.com/D00Med/scifi_nodes/workflows/test/badge.svg)
[![Coverage Status](https://coveralls.io/repos/github/D00Med/scifi_nodes/badge.svg?branch=master)](https://coveralls.io/github/D00Med/scifi_nodes?branch=master)
[![ContentDB](https://content.minetest.net/packages/D00Med/scifi_nodes/shields/downloads/)](https://content.minetest.net/packages/D00Med/scifi_nodes/)

Minetest mod that adds scifi themed blocks, doors, materials, plants and other assets.

Lua api: see [api.md](./api.md)

# Changelog

* Added support for unifieddyes
* 14/08/2019 : retrocompatibility fixed (aliases in doors.lua)
* 13/08/2019 :
  * added mod option doors_open_with_mesecon_only (default = false)
  * fixed a bug preventing the option from working
* 05/09/2019 : door opening on rightclick is disabled (maybe reactivated via a mod option)
* 05/08/2019 :
  * digicodes now work
  * new (and cleaner) implementation for palm scanner
* 05/05/2019 : added palm_scanner, which emmits mesecon signal when rightclicked by owner
* 05/01/2019 : create aliases to deal with old namming policy un doors.lua
* 04/26/2019 :
  * sliding doors now open with mesecon signal
  * added blue sliding doors
  * added digicode node
  * changed ceiling lights recipe
  * added some sounds
* Added Recipes for the unfinished scifi_nodes
* Added support for stairsplus

# Attributions

CC BY 3.0
* scifi_nodes_door_normal.ogg tlwmdbt https://freesound.org/people/tlwmdbt/sounds/165862/
* scifi_nodes_switch.ogg http://soundbible.com/1950-Button-Push.html
* scifi_nodes_palm_scanner.ogg https://freesound.org/people/THE_bizniss/sounds/39313/
* scifi_nodes_access_granted https://freesound.org/people/TheBuilder15/sounds/415762/
* scifi_nodes_access_refused https://freesound.org/people/RICHERlandTV/sounds/216090/
* scifi_nodes_forcefield.png https://github.com/minetest-mods/technic/
* scifi_nodes_dirt.png https://github.com/minetest/minetest_game
* scifi_nodes_grass_top.png https://github.com/minetest/minetest_game
* scifi_nodes_grass_side.png https://github.com/minetest/minetest_game
* scifi_nodes_wood.png https://github.com/minetest/minetest_game

CC0
* scifi_nodes_digicode.ogg https://freesound.org/people/benjaminharveydesign/sounds/315921/
* scifi_nodes_ambience_fan.ogg https://freesound.org/people/itinerantmonk108/sounds/554430/
* scifi_nodes_ambience_vent.ogg https://freesound.org/people/kentspublicdomain/sounds/324665/
* scifi_nodes_ambience_engine.ogg https://freesound.org/people/firestorm185/sounds/423221/


# Contributors:

* D00Med https://github.com/D00Med (creator)
* tanmayameher https://github.com/tanmayameher
* BuckarooBanzay https://github.com/BuckarooBanzay
* acmgit https://github.com/acmgit
* catz85 https://github.com/catz85
* coil0 https://github.com/coil0
* Grossam https://github.com/Grossam
* OgelGames https://github.com/OgelGames
* leftshift https://github.com/leftshift
* fluxionary https://github.com/fluxionary
* Niles Corder https://github.com/ncorder
