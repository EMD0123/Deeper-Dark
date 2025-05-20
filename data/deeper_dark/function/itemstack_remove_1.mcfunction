execute unless entity @s[type=minecraft:item] run return fail
execute store result score @s deeper_dark.var run data get entity @s Item.count
scoreboard players remove @s deeper_dark.var 1
execute store result entity @s Item.count int 1 run scoreboard players get @s deeper_dark.var
execute if score @s deeper_dark.var matches ..0 run tag @s add deeper_dark.silent_despawn