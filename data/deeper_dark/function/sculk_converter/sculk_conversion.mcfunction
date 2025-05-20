playsound minecraft:entity.generic.explode block @a ~ ~3 ~ 1 2
playsound minecraft:entity.warden.death block @a ~ ~ ~ 1 0
playsound minecraft:block.amethyst_block.break block @a ~ ~3 ~ 1 0
playsound minecraft:block.sculk_sensor.clicking block @a ~ ~ ~ 1 0
particle minecraft:sculk_charge_pop ~ ~3 ~ .2 .2 .2 0 50 force
particle minecraft:sonic_boom ~ ~3 ~ 0 0 0 0 1 force
particle minecraft:sculk_soul ~ ~3 ~ 0 0 0 .3 100 force
data modify entity @s data.Item set from entity @s data.newItem
scoreboard players operation @s deeper_dark.sculk_converter.xp -= @s deeper_dark.sculk_converter.xp_cost
execute rotated 0 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame run scoreboard players set 1 deeper_dark.var 1
execute rotated 45 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame run scoreboard players set 2 deeper_dark.var 1
execute rotated 90 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame run scoreboard players set 3 deeper_dark.var 1
execute rotated 135 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame run scoreboard players set 4 deeper_dark.var 1
execute rotated 180 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame run scoreboard players set 5 deeper_dark.var 1
execute rotated 225 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame run scoreboard players set 6 deeper_dark.var 1
execute rotated 270 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame run scoreboard players set 7 deeper_dark.var 1
execute rotated 315 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame run scoreboard players set 8 deeper_dark.var 1
execute if score @s deeper_dark.sculk_converter.flame_cost matches 1.. run function deeper_dark:sculk_converter/remove_flame
execute if score @s deeper_dark.sculk_converter.flame_cost matches 2.. run function deeper_dark:sculk_converter/remove_flame
execute if score @s deeper_dark.sculk_converter.flame_cost matches 3.. run function deeper_dark:sculk_converter/remove_flame
execute if score @s deeper_dark.sculk_converter.flame_cost matches 4.. run function deeper_dark:sculk_converter/remove_flame
execute if score @s deeper_dark.sculk_converter.flame_cost matches 5.. run function deeper_dark:sculk_converter/remove_flame
execute if score @s deeper_dark.sculk_converter.flame_cost matches 6.. run function deeper_dark:sculk_converter/remove_flame
execute if score @s deeper_dark.sculk_converter.flame_cost matches 7.. run function deeper_dark:sculk_converter/remove_flame
execute if score @s deeper_dark.sculk_converter.flame_cost matches 8.. run function deeper_dark:sculk_converter/remove_flame
execute if block ~ ~2 ~ minecraft:hopper[enabled=true] if data entity @s data.Item run function deeper_dark:sculk_converter/hitbox_remove