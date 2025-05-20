execute positioned ~ ~-.1 ~ align xyz positioned ~.5 ~.5 ~.5 if entity @e[tag=deeper_dark.sculk_converter,distance=0..1] run scoreboard players add @e[tag=deeper_dark.sculk_converter,distance=0..1] deeper_dark.sculk_converter.fragments 1
execute store result score @s deeper_dark.var run data get entity @s Item.count
scoreboard players remove @s deeper_dark.var 1
execute if score @s deeper_dark.var matches 0 run kill @s
execute store result entity @s Item.count byte 1 run scoreboard players get @s deeper_dark.var
playsound minecraft:block.end_portal_frame.fill block @a ~ ~ ~ 1 2
playsound minecraft:block.sculk.break block @a ~ ~ ~ 1 2
execute at @s run particle minecraft:sculk_charge{roll:0} ~ ~.5 ~ 0 0 0 0 1 force