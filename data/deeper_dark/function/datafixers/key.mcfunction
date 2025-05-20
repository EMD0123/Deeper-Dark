#disenchant
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deeper_dark.item"]}
item replace entity @e[tag=deeper_dark.item,limit=1,sort=nearest] weapon.mainhand from entity @s weapon.mainhand
data modify entity @e[tag=deeper_dark.item,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".deeper_dark.EntrancePosition.x set from entity @e[tag=deeper_dark.item,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".EntrancePosition[0]
data modify entity @e[tag=deeper_dark.item,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".deeper_dark.EntrancePosition.y set from entity @e[tag=deeper_dark.item,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".EntrancePosition[1]
data modify entity @e[tag=deeper_dark.item,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".deeper_dark.EntrancePosition.z set from entity @e[tag=deeper_dark.item,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".EntrancePosition[2]
data remove entity @e[tag=deeper_dark.item,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".DeeperDarkKey
data remove entity @e[tag=deeper_dark.item,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".EntrancePosition
item replace entity @s weapon.mainhand from entity @e[tag=deeper_dark.item,limit=1,sort=nearest] weapon.mainhand
kill @e[tag=deeper_dark.item]