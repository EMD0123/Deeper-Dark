scoreboard objectives add deeper_dark.shockwave.has_turned dummy
scoreboard objectives add deeper_dark.shockwave.turn_rng dummy
scoreboard objectives add deeper_dark.shockwave.direction dummy

execute align xyz run summon minecraft:pig ~.5 ~ ~.5 {CustomName:'{"text":"Shockwave"}',Silent:1b,DeathLootTable:"deeper_dark:entities/shockwave",NoAI:1b,Age:999999999,Tags:["deeper_dark.shockwave","deeper_dark.shockwave_part"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0b,duration:-1,show_particles:0b}],Health:100f,attributes:[{id:"minecraft:max_health",base:100}]}
function deeper_dark:shockwave/texture
execute as @e[tag=deeper_dark.shockwave_display,sort=nearest,distance=0..1,predicate=!deeper_dark:is_passenger] run ride @s mount @e[tag=deeper_dark.shockwave,limit=1,sort=nearest]