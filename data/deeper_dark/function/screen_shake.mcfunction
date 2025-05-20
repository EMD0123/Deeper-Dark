execute if score Game deeper_dark.gamerule.disable_screen_shake matches 0 run scoreboard objectives add deeper_dark.var dummy
execute if score Game deeper_dark.gamerule.disable_screen_shake matches 0 store result score @s deeper_dark.var if predicate deeper_dark:chance_50
execute if score Game deeper_dark.gamerule.disable_screen_shake matches 0 if score @s deeper_dark.var matches 1 at @s run rotate @s ~1 ~
execute if score Game deeper_dark.gamerule.disable_screen_shake matches 0 if score @s deeper_dark.var matches 0 at @s run rotate @s ~-1 ~
execute if score Game deeper_dark.gamerule.disable_screen_shake matches 0 store result score @s deeper_dark.var if predicate deeper_dark:chance_50
execute if score Game deeper_dark.gamerule.disable_screen_shake matches 0 if score @s deeper_dark.var matches 1 at @s run rotate @s ~ ~1
execute if score Game deeper_dark.gamerule.disable_screen_shake matches 0 if score @s deeper_dark.var matches 0 at @s run rotate @s ~ ~-1