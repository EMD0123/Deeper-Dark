tag @s add deeper_dark.silent_despawn
tag @n[type=minecraft:item,distance=0...6,nbt={Age:0s,Item:{id:"minecraft:cobbled_deepslate",count:1}}] add deeper_dark.silent_despawn
loot spawn ~ ~ ~ loot deeper_dark:items/anticatalyst
execute as @e[type=minecraft:text_display,tag=deeper_dark.anticatalyst.texture] at @s unless block ^ ^ ^-0.2 minecraft:cobbled_deepslate run tag @s add deeper_dark.silent_despawn