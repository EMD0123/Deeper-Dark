scoreboard players set @s deeper_dark.boss_attack_cooldown 5
execute at @n[tag=deeper_dark.boss_hitbox] run summon minecraft:marker ~ ~ ~ {Tags:["deeper_dark.boss.attack.sculk_charge"]}
execute at @n[tag=deeper_dark.boss_hitbox] as @n[tag=deeper_dark.boss.attack.sculk_charge] run function deeper_dark:random_direction
execute at @n[tag=deeper_dark.boss_hitbox] run playsound minecraft:block.sculk_shrieker.break hostile @a ~ ~ ~ 2 2