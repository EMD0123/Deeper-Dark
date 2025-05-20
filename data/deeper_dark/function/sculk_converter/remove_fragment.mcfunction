loot spawn ~ ~ ~ loot deeper_dark:items/altar_fragment
scoreboard players remove @s deeper_dark.sculk_converter.fragments 1
playsound minecraft:block.glass.break block @a ~ ~ ~ 1 2
execute as @e[tag=deeper_dark.sculk_converter_fragments] at @s unless block ~ ~-1 ~ minecraft:sculk_catalyst run kill @s
execute as @e[tag=deeper_dark.sculk_converter_xp] at @s unless block ~ ~-1.5 ~ minecraft:sculk_catalyst run kill @s
execute as @e[tag=deeper_dark.sculk_converter_hitbox] at @s unless block ~ ~-2.5 ~ minecraft:sculk_catalyst run kill @s
execute as @e[tag=deeper_dark.sculk_converter_slot] at @s unless block ~ ~-3 ~ minecraft:sculk_catalyst run kill @s
execute as @e[tag=deeper_dark.sculk_converter_item] at @s unless block ~ ~-3 ~ minecraft:sculk_catalyst run kill @s
execute as @e[tag=deeper_dark.sculk_converter_texture] at @s unless block ^ ^ ^-.1 minecraft:sculk_catalyst run kill @s
execute if score @s deeper_dark.sculk_converter.fragments matches 1.. run function deeper_dark:sculk_converter/remove_fragment
execute if score @s deeper_dark.sculk_converter.fragments matches ..0 run kill @s
