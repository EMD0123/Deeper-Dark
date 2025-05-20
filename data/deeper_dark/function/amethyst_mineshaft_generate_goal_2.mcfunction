data modify block ~ ~ ~ LootTable set value "/"
data modify block ~ ~-1 ~ LootTable set value "/"
data modify block ~ ~1 ~ LootTable set value "/"
setblock ~ ~-1 ~ dark_oak_log
setblock ~ ~ ~ air
execute unless block ~ ~1 ~ dark_oak_slab run setblock ~ ~1 ~ air
execute if entity @s[nbt={Rotation:[0F,0F]}] run setblock ~ ~ ~ minecraft:chest[facing=south]{LootTable:"deeper_dark:amethyst_mineshaft/goal"} replace
execute if entity @s[nbt={Rotation:[90F,0F]}] run setblock ~ ~ ~ minecraft:chest[facing=west]{LootTable:"deeper_dark:amethyst_mineshaft/goal"} replace
execute if entity @s[nbt={Rotation:[180F,0F]}] run setblock ~ ~ ~ minecraft:chest[facing=north]{LootTable:"deeper_dark:amethyst_mineshaft/goal"} replace
execute if entity @s[nbt={Rotation:[270F,0F]}] run setblock ~ ~ ~ minecraft:chest[facing=east]{LootTable:"deeper_dark:amethyst_mineshaft/goal"} replace
#execute if block ~ ~ ~ minecraft:chest run say chest!
