#summon minecraft:pig ~ ~ ~ {Health:0f}
execute positioned ^ ^1 ^ unless block ~ ~ ~ minecraft:reinforced_deepslate unless entity @e[distance=0...5,tag=deeper_dark.portal_marker] if score @s deeper_dark.var matches 1 run function deeper_dark:portal/mark

execute positioned ^ ^ ^1 unless block ~ ~ ~ minecraft:reinforced_deepslate unless entity @e[distance=0...5,tag=deeper_dark.portal_marker] if score @s deeper_dark.var matches 1 run function deeper_dark:portal/mark


execute positioned ^ ^-1 ^ unless block ~ ~ ~ minecraft:reinforced_deepslate unless entity @e[distance=0...5,tag=deeper_dark.portal_marker] if score @s deeper_dark.var matches 1 run function deeper_dark:portal/mark

execute positioned ^ ^ ^-1 unless block ~ ~ ~ minecraft:reinforced_deepslate unless entity @e[distance=0...5,tag=deeper_dark.portal_marker] if score @s deeper_dark.var matches 1 run function deeper_dark:portal/mark


