execute positioned ~-.75 ~-.75 ~-.75 as @e[dx=0.5,dy=0.5,dz=0.5,predicate=deeper_dark:living,predicate=!deeper_dark:sculk_entity] run damage @s 50 minecraft:mob_attack by @n[tag=deeper_dark.boss_hitbox]
tag @s add deeper_dark.boss.attack_done
playsound minecraft:entity.warden.attack_impact hostile @a ~ ~ ~ 3 1
playsound minecraft:item.mace.smash_ground_heavy hostile @a ~ ~ ~ 3 0
particle minecraft:dust_pillar{block_state:sculk} ~ ~ ~ .5 .5 .5 .01 50 force