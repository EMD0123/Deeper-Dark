kill @n[tag=deeper_dark.portal_activation,distance=0..1]
execute store success score @s deeper_dark.var unless block ~ ~1 ~ minecraft:bedrock
execute positioned ^ ^1 ^-.5 rotated ~90 0 align xyz positioned ~.5 ~.5 ~.5 run function deeper_dark:portal/check
execute if score @s deeper_dark.var matches 1 as @e[tag=deeper_dark.portal_marker] at @s run function deeper_dark:portal/unlight
execute if score @s deeper_dark.var matches 1 as @e[tag=deeper_dark.portal_marker] at @s run function deeper_dark:portal/unlight
execute if score @s deeper_dark.var matches 1 as @e[tag=deeper_dark.portal_marker,distance=0..1.5] at @s run playsound minecraft:block.end_portal.spawn block @a ~ ~ ~ 10 0
execute if score @s deeper_dark.var matches 1 as @e[tag=deeper_dark.portal_marker,distance=0..1.5] at @s run playsound minecraft:entity.warden.sonic_boom block @a ~ ~ ~ 10 0
execute if score @s deeper_dark.var matches 1 as @e[tag=deeper_dark.portal_marker] at @s unless entity @e[distance=0...1,tag=deeper_dark.portal_display] run function deeper_dark:portal/light
execute if score @s deeper_dark.var matches 1 run tag @s add deeper_dark.active_portal
#tag @e remove deeper_dark.active_portal