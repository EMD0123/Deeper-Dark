#particle lava
execute unless entity @e[tag=deeper_dark.syphon,distance=0..7] run return run function deeper_dark:syphon/spawn
execute unless entity @e[tag=deeper_dark.sculk_claw,distance=0..3] if entity @e[tag=deeper_dark.syphon,distance=0..8] if block ~ ~-1 ~ sculk run return run function deeper_dark:claw/spawn
execute if predicate { "condition": "minecraft:random_chance", "chance": 0.005 } if entity @e[tag=deeper_dark.syphon,distance=0..2] unless entity @e[tag=deeper_dark.tentacles,distance=0..10] run return run function deeper_dark:tentacle/spawn
execute if predicate { "condition": "minecraft:random_chance", "chance": 0.005 } run return run setblock ~ ~ ~ minecraft:sculk_sensor
execute if predicate { "condition": "minecraft:random_chance", "chance": 0.001 } run return run setblock ~ ~ ~ minecraft:sculk_shrieker[can_summon=true]
#execute if predicate { "condition": "minecraft:random_chance", "chance": 0.001 } run return run execute if entity @n[distance=0..5,predicate=deeper_dark:touching_sculk,predicate=!deeper_dark:sculk_entity] unless entity @e[type=minecraft:warden,distance=0..50] summon minecraft:marker run function deeper_dark:warden_spawn
