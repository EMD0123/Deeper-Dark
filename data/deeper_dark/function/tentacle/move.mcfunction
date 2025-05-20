execute if predicate deeper_dark:chance_50 if predicate deeper_dark:chance_50 store result score @s deeper_dark.var run random value -1..1
scoreboard players operation @s deeper_dark.tentacle_y += @s deeper_dark.var
execute if score @s deeper_dark.tentacle_y matches ..-1 run scoreboard players set @s deeper_dark.tentacle_y 0
execute if score @s deeper_dark.tentacle_y matches 7.. run scoreboard players set @s deeper_dark.tentacle_y 6
execute if score @s deeper_dark.tentacle_y matches 0 at @s run rotate @s ~ ~2
execute if score @s deeper_dark.tentacle_y matches 1 at @s run rotate @s ~ ~1
execute if score @s deeper_dark.tentacle_y matches 2 at @s run rotate @s ~ ~0.5
execute if score @s deeper_dark.tentacle_y matches 4 at @s run rotate @s ~ ~-0.5
execute if score @s deeper_dark.tentacle_y matches 5 at @s run rotate @s ~ ~-1
execute if score @s deeper_dark.tentacle_y matches 6 at @s run rotate @s ~ ~-2

execute if predicate deeper_dark:chance_50 if predicate deeper_dark:chance_50 store result score @s deeper_dark.var run random value -1..1
scoreboard players operation @s deeper_dark.tentacle_x += @s deeper_dark.var
execute if score @s deeper_dark.tentacle_x matches ..-1 run scoreboard players set @s deeper_dark.tentacle_x 0
execute if score @s deeper_dark.tentacle_x matches 7.. run scoreboard players set @s deeper_dark.tentacle_x 6
execute if score @s deeper_dark.tentacle_x matches 0 at @s run rotate @s ~2 ~
execute if score @s deeper_dark.tentacle_x matches 1 at @s run rotate @s ~1 ~
execute if score @s deeper_dark.tentacle_x matches 2 at @s run rotate @s ~0.5 ~
execute if score @s deeper_dark.tentacle_x matches 4 at @s run rotate @s ~-0.5 ~
execute if score @s deeper_dark.tentacle_x matches 5 at @s run rotate @s ~-1 ~
execute if score @s deeper_dark.tentacle_x matches 6 at @s run rotate @s ~-2 ~
