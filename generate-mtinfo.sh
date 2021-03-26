#!/bin/sh

# prepare config
CONFIG=/tmp/scifi_nodes_minetest.conf
echo "mtinfo.autoshutdown = true" > ${CONFIG}
echo "moreblocks.stairsplus_in_creative_inventory = false" >> ${CONFIG}

# prepare dependent mods
WORLDMODS_DIR=/tmp/scifi_nodes_worldmods
git clone --depth=1 https://gitlab.com/VanessaE/unifieddyes.git ${WORLDMODS_DIR}/unifieddyes
git clone --depth=1 https://gitlab.com/VanessaE/basic_materials.git ${WORLDMODS_DIR}/basic_materials
git clone --depth=1 https://github.com/minetest-mods/mesecons.git ${WORLDMODS_DIR}/mesecons
git clone --depth=1 https://github.com/minetest-mods/moreblocks.git ${WORLDMODS_DIR}/moreblocks
git clone --depth=1 https://github.com/BuckarooBanzay/mtinfo.git ${WORLDMODS_DIR}/mtinfo
cp . ${WORLDMODS_DIR}/scifi_nodes -R

# start container with mtinfo
docker run --rm -i \
	--user root \
	-v ${CONFIG}:/etc/minetest/minetest.conf:ro \
	-v ${WORLDMODS_DIR}/:/root/.minetest/worlds/world/worldmods \
	-v $(pwd)/output:/root/.minetest/worlds/world/mtinfo \
	registry.gitlab.com/minetest/minetest/server:5.4.0

test -f $(pwd)/output/index.html || exit 1
test -f $(pwd)/output/data/items.js || exit 1
test -d $(pwd)/output/textures || exit 1
