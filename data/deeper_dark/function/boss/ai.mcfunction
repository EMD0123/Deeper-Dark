scoreboard players set @a[distance=0..25] deeper_dark.ancient_dark_active 0
execute store result bossbar minecraft:deeper_dark/boss value run data get entity @n[tag=deeper_dark.boss_hitbox] Health
bossbar set minecraft:deeper_dark/boss players @a[distance=0..30]
execute as @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark] at @s if entity @e[tag=deeper_dark.boss,distance=0..25] run data remove entity @s Brain.memories.minecraft:dig_cooldown
effect clear @e[tag=deeper_dark.boss_hitbox] glowing
execute as @n[tag=deeper_dark.boss_hitbox] at @s if data entity @s {HurtTime:1s} run playsound minecraft:block.decorated_pot.shatter hostile @a ~ ~ ~ 3 0
execute as @n[tag=deeper_dark.boss_hitbox] at @s if data entity @s {HurtTime:1s} run particle minecraft:sculk_soul ~ ~ ~ 0 0 0 0.1 1 force


execute as @e[predicate=deeper_dark:living,predicate=deeper_dark:touching_sculk,predicate=!deeper_dark:sculk_entity,distance=0..30] run tag @s add deeper_dark.boss.target
execute as @n[tag=deeper_dark.boss_hitbox] on attacker run tag @s[predicate=!deeper_dark:sculk_entity] add deeper_dark.boss.target


execute unless score @s deeper_dark.tentacle_attack_time matches 1.. run rotate @s facing entity @n[tag=deeper_dark.boss.target]
#say @n[tag=deeper_dark.boss.target]
tag @e[tag=deeper_dark.boss_hitbox] remove deeper_dark.boss.target
scoreboard players remove @s deeper_dark.boss_attack_cooldown 1

#attacks

execute unless score @s deeper_dark.boss_attack_cooldown matches 1.. if predicate deeper_dark:chance_50 if predicate deeper_dark:chance_50 if entity @n[tag=deeper_dark.boss.target] run function deeper_dark:boss/attacks/slam_start
execute if score @s deeper_dark.tentacle_attack_time matches 1.. run scoreboard players remove @s deeper_dark.tentacle_attack_time 1
execute if score @s deeper_dark.tentacle_attack_time matches 40 at @n[tag=deeper_dark.boss.target] run summon minecraft:marker ~ ~ ~ {Tags:["deeper_dark.boss.target_point"]}
execute if score @s deeper_dark.tentacle_attack_time matches 40.. unless entity @n[tag=deeper_dark.boss.target] run scoreboard players set @s deeper_dark.boss_attack_cooldown 0
execute if score @s deeper_dark.tentacle_attack_time matches 40.. unless entity @n[tag=deeper_dark.boss.target] run scoreboard players set @s deeper_dark.tentacle_attack_time 0
execute if score @s deeper_dark.tentacle_attack_time matches 0 run tag @n[tag=deeper_dark.boss.target_point] add deeper_dark.silent_despawn
execute if score @s deeper_dark.tentacle_attack_time matches 40 run tag @e[tag=deeper_dark.boss.attack_done] remove deeper_dark.boss.attack_done





execute unless score @s deeper_dark.boss_attack_cooldown matches 1.. if predicate deeper_dark:chance_50 at @n[tag=deeper_dark.boss_hitbox] if entity @n[tag=deeper_dark.boss.target] facing entity @n[tag=deeper_dark.boss.target] eyes run function deeper_dark:boss/attacks/sonicattack_start
execute if score @s deeper_dark.sonicattack matches 1.. run scoreboard players remove @s deeper_dark.sonicattack 1
execute if score @s deeper_dark.sonicattack matches 2.. unless entity @n[tag=deeper_dark.boss.target] run scoreboard players set @s deeper_dark.boss_attack_cooldown 0
execute if score @s deeper_dark.sonicattack matches 2.. unless entity @n[tag=deeper_dark.boss.target] run scoreboard players set @s deeper_dark.tentacle_attack_time 0
execute if score @s deeper_dark.sonicattack matches 1 as @n[tag=deeper_dark.boss_hitbox] at @s facing entity @n[tag=deeper_dark.boss.target] eyes run function deeper_dark:boss/attacks/sonicattack



execute unless score @s deeper_dark.boss_attack_cooldown matches 1.. run function deeper_dark:boss/attacks/sculk_charge
execute as @e[tag=deeper_dark.boss.attack.sculk_charge] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=deeper_dark.boss.attack.sculk_charge] at @s run particle minecraft:sculk_charge_pop ~ ~ ~ 0 0 0 .01 1 force
execute as @e[tag=deeper_dark.boss.attack.sculk_charge] at @s run playsound minecraft:block.sculk.hit hostile @a ~ ~ ~ 1 0
execute as @e[tag=deeper_dark.boss.attack.sculk_charge] at @s unless block ~ ~ ~ #minecraft:replaceable run tag @s[type=!player] add deeper_dark.silent_despawn



execute as @e[tag=deeper_dark.boss.attack.sculk_charge] at @s if block ~ ~ ~ minecraft:sculk_vein[down=true,east=false,north=false,south=false,up=false,waterlogged=false,west=false] unless entity @n[tag=deeper_dark.tentacles,distance=0..12] unless entity @n[tag=deeper_dark.boss,distance=0..8] run function deeper_dark:tentacle/spawn
execute as @e[tag=deeper_dark.boss.attack.sculk_charge] at @s if block ~ ~ ~ minecraft:sculk_vein[down=true,east=false,north=false,south=false,up=false,waterlogged=false,west=false] unless entity @n[tag=deeper_dark.syphon,distance=0..4] unless entity @n[tag=deeper_dark.boss,distance=0..8] run function deeper_dark:syphon/spawn

execute as @e[tag=deeper_dark.boss.attack.sculk_charge] at @s store success score @s deeper_dark.var run place feature deeper_dark:sculk_patch_boss
execute as @e[tag=deeper_dark.boss.attack.sculk_charge] at @s if score @s deeper_dark.var matches 1 run tag @s[type=!player] add deeper_dark.silent_despawn







#spawn tentacle
function deeper_dark:boss/tentacle/validate
execute at @e[tag=deeper_dark.selected_all] run scoreboard players add @s deeper_dark.var 1
execute unless score @s deeper_dark.var matches 6 run function deeper_dark:boss/tentacle/setup
scoreboard players set @e[tag=deeper_dark.selected_all] deeper_dark.var 0





tag @s add deeper_dark.selected
execute if score @s deeper_dark.tentacle_attack_time matches 41.. run function deeper_dark:boss/attacks/slam_1
#attach
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_1] at @s positioned ^ ^ ^1 rotated as @n[tag=deeper_dark.selected] rotated ~ -45 run rotate @s facing ^ ^ ^0.1
execute if score @s deeper_dark.tentacle_attack_time matches 1..40 as @e[type=minecraft:block_display,tag=deeper_dark.selected_1] at @s run function deeper_dark:boss/attacks/slam_2
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_1] at @s positioned ^ ^3 ^ run tp @e[type=minecraft:block_display,tag=deeper_dark.selected_2] ~ ~ ~



execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_2] at @s positioned ^ ^ ^1 rotated as @n[tag=deeper_dark.selected] rotated ~ -60 run rotate @s facing ^ ^ ^0.1
execute if score @s deeper_dark.tentacle_attack_time matches 1..40 as @e[type=minecraft:block_display,tag=deeper_dark.selected_2] at @s run function deeper_dark:boss/attacks/slam_2
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_2] at @s positioned ^ ^3 ^ run tp @e[type=minecraft:block_display,tag=deeper_dark.selected_3] ~ ~ ~



execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_3] at @s positioned ^ ^ ^1 rotated as @n[tag=deeper_dark.selected] rotated ~ -10 run rotate @s facing ^ ^ ^0.1
execute if score @s deeper_dark.tentacle_attack_time matches 1..40 as @e[type=minecraft:block_display,tag=deeper_dark.selected_3] at @s run function deeper_dark:boss/attacks/slam_2
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_3] at @s positioned ^ ^3 ^ run tp @e[type=minecraft:block_display,tag=deeper_dark.selected_4] ~ ~ ~



execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_4] at @s positioned ^ ^ ^1 rotated as @n[tag=deeper_dark.selected] rotated ~ 30 run rotate @s facing ^ ^ ^0.1
execute if score @s deeper_dark.tentacle_attack_time matches 1..40 as @e[type=minecraft:block_display,tag=deeper_dark.selected_4] at @s run function deeper_dark:boss/attacks/slam_2
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_4] at @s positioned ^ ^3 ^ run tp @e[type=minecraft:block_display,tag=deeper_dark.selected_5] ~ ~ ~



execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_5] at @s positioned ^ ^ ^1 rotated as @n[tag=deeper_dark.selected] rotated ~ 60 run rotate @s facing ^ ^ ^0.1
execute if score @s deeper_dark.tentacle_attack_time matches 1..40 as @e[type=minecraft:block_display,tag=deeper_dark.selected_5] at @s run function deeper_dark:boss/attacks/slam_2
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_5] at @s positioned ^ ^3 ^ run tp @e[type=minecraft:block_display,tag=deeper_dark.selected_6] ~ ~ ~



execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_6] at @s positioned ^ ^ ^1 rotated as @n[tag=deeper_dark.selected] rotated ~ 85 run rotate @s facing ^ ^ ^0.5
execute if score @s deeper_dark.tentacle_attack_time matches 1..40 as @e[type=minecraft:block_display,tag=deeper_dark.selected_6] at @s run function deeper_dark:boss/attacks/slam_2
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_6] at @s positioned ^ ^3 ^ run tp @n[tag=deeper_dark.boss_hitbox] ~ ~-.5 ~
execute as @e[tag=deeper_dark.boss_hitbox] at @s run tp @s @n[tag=deeper_dark.boss.target_point,distance=0..4]
execute as @e[tag=deeper_dark.boss_hitbox] at @s if entity @n[tag=deeper_dark.boss.target_point,distance=0..4] unless entity @s[tag=deeper_dark.boss.attack_done] run function deeper_dark:boss/attacks/slam_attack




#animate
tp @n[type=minecraft:block_display,tag=deeper_dark.selected_1] ~ ~-0.5 ~
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_all] at @s run function deeper_dark:tentacle/move

execute as @n[tag=deeper_dark.boss_hitbox] at @s run tp @e[tag=deeper_dark.boss.block.base,limit=25,sort=nearest] ~ ~.5 ~
execute as @n[tag=deeper_dark.boss_hitbox] at @s run tp @e[tag=deeper_dark.boss.block.sculk,limit=24,sort=nearest] ~ ~.5 ~

#die
#execute unless block ~ ~ ~ sculk_sensor run function deeper_dark:tentacle/break
#untag
scoreboard players set @e[tag=deeper_dark.selected_all] deeper_dark.var 1
tag @e[tag=deeper_dark.selected] remove deeper_dark.selected
tag @e[tag=deeper_dark.selected_1] remove deeper_dark.selected_1
tag @e[tag=deeper_dark.selected_2] remove deeper_dark.selected_2
tag @e[tag=deeper_dark.selected_3] remove deeper_dark.selected_3
tag @e[tag=deeper_dark.selected_4] remove deeper_dark.selected_4
tag @e[tag=deeper_dark.selected_5] remove deeper_dark.selected_5
tag @e[tag=deeper_dark.selected_6] remove deeper_dark.selected_6
tag @e[tag=deeper_dark.selected_all] remove deeper_dark.selected_all
tag @e[tag=deeper_dark.boss.target] remove deeper_dark.boss.target