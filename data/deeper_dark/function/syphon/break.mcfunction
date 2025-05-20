tag @s add deeper_dark.silent_despawn
tag @n[type=minecraft:item,distance=0...6,nbt={Age:0s,Item:{id:"minecraft:sculk_catalyst",count:1}}] add deeper_dark.silent_despawn
execute as @n[type=minecraft:item,distance=0...6,nbt={Age:0s,Item:{id:"minecraft:sculk_catalyst",count:1}}] run loot spawn ~ ~ ~ loot deeper_dark:items/sculk_syphon
playsound minecraft:block.sculk_shrieker.shriek block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:text_display,tag=deeper_dark.syphon_base] at @s unless block ~ ~-.5 ~ minecraft:sculk_catalyst run tag @s add deeper_dark.silent_despawn
execute as @e[type=minecraft:text_display,tag=deeper_dark.syphon_jaw] at @s unless block ~ ~-1.1 ~ minecraft:sculk_catalyst run tag @s add deeper_dark.silent_despawn