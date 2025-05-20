execute at @s if entity @e[tag=deeper_dark.portal_display,distance=0..1.5] run return run kill @s
execute unless block ~ ~-1 ~ minecraft:reinforced_deepslate run tp @s ~ ~-1 ~
execute unless block ~ ~-1 ~ minecraft:reinforced_deepslate run tp @s ~ ~-1 ~
execute unless block ~ ~-1 ~ minecraft:reinforced_deepslate run tp @s ~ ~-1 ~
execute unless block ~ ~-1 ~ minecraft:reinforced_deepslate run tp @s ~ ~-1 ~
execute unless block ~ ~-1 ~ minecraft:reinforced_deepslate run tp @s ~ ~-1 ~
execute unless block ~ ~-1 ~ minecraft:reinforced_deepslate run tp @s ~ ~-1 ~
execute unless block ~ ~-1 ~ minecraft:reinforced_deepslate run tp @s ~ ~-1 ~
execute unless block ~ ~-1 ~ minecraft:reinforced_deepslate run tp @s ~ ~-1 ~
execute unless data entity @s data.EntrancePosition run data modify entity @s data.EntrancePosition set from storage deeper_dark:data PortalLocation
execute store success score @s deeper_dark.var unless block ~ ~1 ~ minecraft:bedrock
execute at @s rotated ~90 0 align xyz positioned ~.5 ~.5 ~.5 run function deeper_dark:portal/check
execute at @s if score @s deeper_dark.var matches 1 as @e[tag=deeper_dark.portal_marker] at @s run function deeper_dark:portal/unlight
execute at @s if score @s deeper_dark.var matches 1 as @e[tag=deeper_dark.portal_marker] at @s run function deeper_dark:portal/unlight
execute at @s if score @s deeper_dark.var matches 1 as @e[tag=deeper_dark.portal_marker,distance=0..1.5] at @s run playsound minecraft:block.end_portal.spawn block @a ~ ~ ~ 10 0
execute at @s if score @s deeper_dark.var matches 1 as @e[tag=deeper_dark.portal_marker,distance=0..1.5] at @s run playsound minecraft:entity.warden.sonic_boom block @a ~ ~ ~ 10 0
execute at @s if score @s deeper_dark.var matches 1 as @e[tag=deeper_dark.portal_marker] at @s unless entity @e[distance=0...1,tag=deeper_dark.portal_display] run function deeper_dark:portal/light
execute at @s if score @s deeper_dark.var matches 1 as @e[type=!minecraft:marker] if entity @e[tag=deeper_dark.portal_marker,distance=0..2] run tag @s add deeper_dark.tp_cooldown
kill @s