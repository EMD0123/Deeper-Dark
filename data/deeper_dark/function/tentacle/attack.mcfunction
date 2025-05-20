execute if entity @s[tag=!deeper_dark.tentacle.landed] at @s rotated ~ ~20 if block ^ ^1.5 ^ #deeper_dark:tentacle_noclip run rotate @s ~ ~
execute if entity @s[tag=!deeper_dark.tentacle.landed] at @s rotated ~ ~20 if block ^ ^1.5 ^ #deeper_dark:tentacle_noclip run rotate @s ~ ~
execute if entity @s[tag=!deeper_dark.tentacle.landed] at @s rotated ~ ~20 if block ^ ^1.5 ^ #deeper_dark:tentacle_noclip run rotate @s ~ ~
execute if entity @s[tag=!deeper_dark.tentacle.landed] at @s rotated ~ ~20 if block ^ ^1.5 ^ #deeper_dark:tentacle_noclip run rotate @s ~ ~-20
execute if entity @s[tag=!deeper_dark.tentacle.landed] at @s rotated ~ ~20 if block ^ ^1.5 ^ #deeper_dark:tentacle_noclip run rotate @s ~ ~-20
execute if entity @s[tag=!deeper_dark.tentacle.landed] at @s rotated ~ ~20 if block ^ ^1.5 ^ #deeper_dark:tentacle_noclip run rotate @s ~ ~-20

execute if entity @s[tag=!deeper_dark.tentacle.landed] at @s rotated ~ ~20 unless block ^ ^1.5 ^ #deeper_dark:tentacle_noclip run function deeper_dark:tentacle/land_hit

execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_1] at @s positioned ^ ^1.25 ^ run tp @e[type=minecraft:block_display,tag=deeper_dark.selected_2] ^ ^ ^.25
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_2] at @s positioned ^ ^1.25 ^ run tp @e[type=minecraft:block_display,tag=deeper_dark.selected_3] ~ ~ ~
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_3] at @s positioned ^ ^1.25 ^ run tp @e[type=minecraft:block_display,tag=deeper_dark.selected_4] ~ ~ ~
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_4] at @s positioned ^ ^1.25 ^ run tp @e[type=minecraft:block_display,tag=deeper_dark.selected_5] ~ ~ ~
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_5] at @s positioned ^ ^1.25 ^ run tp @e[type=minecraft:block_display,tag=deeper_dark.selected_6] ~ ~ ~

execute if entity @s[tag=!deeper_dark.tentacle.landed,x_rotation=90] at @s run function deeper_dark:tentacle/land_hit
execute if entity @s[tag=!deeper_dark.tentacle.landed] at @s rotated ~ ~20 at @s positioned ^ ^.75 ^ positioned ~-.5 ~-.5 ~-.5 if entity @n[dx=0,dy=0,dz=0,predicate=deeper_dark:living,type=!minecraft:warden] run function deeper_dark:tentacle/land_hit

scoreboard players set @s deeper_dark.tentacle_y 1