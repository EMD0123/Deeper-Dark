#execute align xyz run summon minecraft:marker ~.5 ~.5 ~.5 {Tags:["deeper_dark.arena"],Rotation:[0F,0F]}
execute if entity @s[y_rotation=0] store success score @s deeper_dark.var run place template deeper_dark:laboratory/arena ~20 ~-2 ~-20 clockwise_90
execute if entity @s[y_rotation=90] store success score @s deeper_dark.var run place template deeper_dark:laboratory/arena ~20 ~-2 ~20 180
execute if entity @s[y_rotation=180] store success score @s deeper_dark.var run place template deeper_dark:laboratory/arena ~-20 ~-2 ~20 counterclockwise_90
execute if entity @s[y_rotation=-90] store success score @s deeper_dark.var run place template deeper_dark:laboratory/arena ~-20 ~-2 ~-20 none
execute if score @s deeper_dark.var matches 1 align xyz run summon minecraft:marker ~.5 ~.5 ~.5 {Tags:["deeper_dark.boss_spawner"]}
execute if score @s deeper_dark.var matches 1 run tp @n[tag=deeper_dark.boss_spawner,distance=0..10] ~ ~ ~
execute if score @s deeper_dark.var matches 1 run function deeper_dark:boss/block_base
execute if score @s deeper_dark.var matches 1 run function deeper_dark:boss/block_off
execute if score @s deeper_dark.var matches 1 run kill @s[type=!player]