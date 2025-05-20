execute positioned ~ ~3 ~ run summon minecraft:item ~ ~ ~ {Tags:["deeper_dark.sculk_converter_drop"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=deeper_dark.sculk_converter_drop,limit=1] Item set from entity @e[tag=deeper_dark.sculk_converter,limit=1,sort=nearest,distance=0...1] data.Item
tag @e remove deeper_dark.sculk_converter_drop
data remove entity @e[tag=deeper_dark.sculk_converter,limit=1,sort=nearest,distance=0...1] data.Item
data remove entity @s interaction