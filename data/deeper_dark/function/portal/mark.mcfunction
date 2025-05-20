summon minecraft:marker ~ ~ ~ {Tags:["deeper_dark.portal_marker"]}
tp @e[tag=deeper_dark.portal_marker,limit=1,sort=nearest,distance=0..] ~ ~ ~ ~ ~
execute if data entity @s Item.components.minecraft:custom_data.deeper_dark.EntrancePosition run data modify entity @e[tag=deeper_dark.portal_marker,limit=1,sort=nearest,distance=0..] data.location set from entity @s Item.components.minecraft:custom_data.deeper_dark.EntrancePosition
execute if data entity @s data.EntrancePosition run data modify entity @e[tag=deeper_dark.portal_marker,limit=1,sort=nearest,distance=0..] data.location set from entity @s data.EntrancePosition
execute store success score @s deeper_dark.var unless block ~ ~1 ~ minecraft:bedrock
function deeper_dark:portal/check
