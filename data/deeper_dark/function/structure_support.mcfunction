tp @s ~ ~-1 ~
execute at @s unless entity @s[tag=deeper_dark.silent_despawn] if block ~ ~1 ~ minecraft:dark_oak_log[axis=y] if biome ~ ~ ~ deeper_dark:volcanic_caverns run fill ~ ~1 ~ ~ ~4 ~ minecraft:polished_basalt replace minecraft:dark_oak_log[axis=y]
execute at @s unless block ~ ~ ~ #deeper_dark:structure_support_noclip run tag @s add deeper_dark.silent_despawn
execute at @s unless entity @s[tag=deeper_dark.silent_despawn] run clone ~ ~1 ~ ~ ~1 ~ ~ ~ ~
execute at @s unless entity @s[tag=deeper_dark.silent_despawn] if block ~ ~1 ~ minecraft:dark_oak_log[axis=y] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"location":{"position":{"y":{"min":-51,"max":-50}}}}} run setblock ~ ~ ~ minecraft:cobbled_deepslate
execute at @s unless entity @s[tag=deeper_dark.silent_despawn] if block ~ ~1 ~ minecraft:dark_oak_log[axis=y] if biome ~ ~ ~ deeper_dark:volcanic_caverns run setblock ~ ~ ~ minecraft:polished_basalt
