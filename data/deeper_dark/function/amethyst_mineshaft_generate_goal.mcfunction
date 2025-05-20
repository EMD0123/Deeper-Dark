execute positioned ~-500 ~-1 ~-500 as @e[dy=1,dx=1000,dz=1000,tag=deeper_dark.amethyst_mineshaft_storage_room] run tag @s add deeper_dark.amethyst_mineshaft_storage_room_active
execute as @e[tag=deeper_dark.amethyst_mineshaft_storage_room_active,limit=1,sort=random] at @s run function deeper_dark:amethyst_mineshaft_generate_goal_2
execute unless entity @e[tag=deeper_dark.amethyst_mineshaft_storage_room_active,limit=1] run setblock ^-4 ^-1 ^2 chest
#execute unless entity @e[tag=deeper_dark.amethyst_mineshaft_storage_room_active,limit=1] run say chest! 2
execute unless entity @e[tag=deeper_dark.amethyst_mineshaft_storage_room_active,limit=1] run data modify block ^-4 ^-1 ^2 LootTable set value "deeper_dark:amethyst_mineshaft/goal"
tag @e remove deeper_dark.amethyst_mineshaft_storage_room_active
tag @s add deeper_dark.amethyst_mineshaft.floor_spawned_goal