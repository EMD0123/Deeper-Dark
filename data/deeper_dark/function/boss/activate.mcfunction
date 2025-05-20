kill @e[tag=deeper_dark.boss.block.off,distance=..1]
function deeper_dark:boss/block_sculk
playsound minecraft:entity.warden.emerge hostile @a ~ ~ ~ 3
playsound minecraft:block.trial_spawner.ominous_activate hostile @a ~ ~ ~ 3 0
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ .4 .4 .4 0 50 force
execute align xyz run summon minecraft:marker ~.5 ~.5 ~.5 {Tags:["deeper_dark.boss"]}
execute as @e[tag=deeper_dark.boss] at @s run rotate @s facing entity @p
summon ghast ~ ~-.5 ~ {CustomName:'"Defender"',Silent:1b,DeathLootTable:"/",PersistenceRequired:1b,NoAI:1b,Health:999999999f,Tags:["deeper_dark.boss_hitbox"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:armor",base:20},{id:"minecraft:max_health",base:700},{id:"minecraft:scale",base:0.25}]}
kill @s