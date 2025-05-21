function deeper_dark:itemstack_remove_1
execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:["deeper_dark.sonic_blaster"],CustomName:"Sonic Blaster"}
execute align xyz positioned ~.5 ~.5 ~.5 on origin facing entity @s eyes run rotate @n[tag=deeper_dark.sonic_blaster] facing entity @s eyes
execute align xyz positioned ~.5 ~.5 ~.5 as @n[tag=deeper_dark.sonic_blaster] if entity @s[x_rotation=0..90] run rotate @s facing ~ ~-1 ~
execute align xyz positioned ~.5 ~.5 ~.5 as @n[tag=deeper_dark.sonic_blaster] unless entity @s[x_rotation=80..90] at @s if entity @s[y_rotation=-45..45] run rotate @s 0 0
execute align xyz positioned ~.5 ~.5 ~.5 as @n[tag=deeper_dark.sonic_blaster] unless entity @s[x_rotation=80..90] at @s if entity @s[y_rotation=45..135] run rotate @s 90 0
execute align xyz positioned ~.5 ~.5 ~.5 as @n[tag=deeper_dark.sonic_blaster] unless entity @s[x_rotation=80..90] at @s if entity @s[y_rotation=135..225] run rotate @s 180 0
execute align xyz positioned ~.5 ~.5 ~.5 as @n[tag=deeper_dark.sonic_blaster] unless entity @s[x_rotation=80..90] at @s if entity @s[y_rotation=225..315] run rotate @s 270 0
execute align xyz positioned ~.5 ~.5 ~.5 rotated as @n[tag=deeper_dark.sonic_blaster] run function deeper_dark:sonic_blaster/front
execute align xyz positioned ~.5 ~.5 ~.5 as @n[tag=deeper_dark.sonic_blaster] unless entity @s[x_rotation=80..90] rotated as @s run function deeper_dark:sonic_blaster/sides
execute align xyz positioned ~.5 ~.5 ~.5 as @n[tag=deeper_dark.sonic_blaster] at @s run function deeper_dark:sonic_blaster/ring/1
execute align xyz positioned ~.5 ~.5 ~.5 as @n[tag=deeper_dark.sonic_blaster] at @s run function deeper_dark:sonic_blaster/ring/2
execute align xyz positioned ~.5 ~.5 ~.5 as @n[tag=deeper_dark.sonic_blaster] at @s run function deeper_dark:sonic_blaster/ring/3
execute if predicate deeper_dark:water run setblock ~ ~ ~ minecraft:sculk_sensor[waterlogged=true]
execute unless predicate deeper_dark:water run setblock ~ ~ ~ minecraft:sculk_sensor[waterlogged=false]