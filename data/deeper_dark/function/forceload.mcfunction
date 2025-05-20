scoreboard objectives add deeper_dark.var dummy
data modify entity @s Pos set from entity @s HandItems[0].tag.EntrancePosition
execute at @s in minecraft:overworld store success score @s deeper_dark.var run forceload query ~ ~
execute at @s in minecraft:overworld if score @s deeper_dark.var matches 0 run forceload add ~ ~
execute at @s in minecraft:overworld run tp @s ~ ~ ~
execute at @s in minecraft:overworld run tp @p[tag=deeper_dark.tp_out_player] ~ ~ ~
execute at @s in minecraft:overworld run fill ~ ~ ~ ~ ~1 ~ minecraft:air destroy
execute at @s in minecraft:overworld if score @s deeper_dark.var matches 0 run forceload remove ~ ~
scoreboard players set @a deeper_dark.var 0