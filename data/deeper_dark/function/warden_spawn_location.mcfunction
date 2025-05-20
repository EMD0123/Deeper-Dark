tag @s[type=!player] add deeper_dark.silent_despawn
spreadplayers ~ ~ 1 100 false @s
execute store result entity @s Pos[1] double 1 run random value -63..63
execute at @s run function deeper_dark:on_ground
execute at @s if predicate deeper_dark:in_ancient_dark unless entity @n[type=minecraft:warden,distance=0..30] unless entity @p[gamemode=!spectator,distance=0..4] if block ~ ~-1 ~ minecraft:sculk run function deeper_dark:warden_spawn