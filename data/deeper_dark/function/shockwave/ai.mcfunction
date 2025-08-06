#display entity
execute as @e[type=block_display,tag=deeper_dark.shockwave_display_main] at @s unless entity @e[tag=deeper_dark.shockwave,type=pig,distance=0..1,limit=1] unless predicate deeper_dark:is_passenger at @s run function deeper_dark:shockwave/death
execute as @e[type=block_display,tag=deeper_dark.shockwave_display_main] at @s unless entity @e[tag=deeper_dark.shockwave,type=pig,distance=0..1,limit=1] on vehicle run tp @s ~ ~-10000 ~
execute as @e[tag=deeper_dark.shockwave_display,predicate=deeper_dark:in_void,limit=2,sort=random] unless predicate deeper_dark:is_passenger run kill @s


#ai circle

execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] if entity @s[scores={deeper_dark.shockwave.turn_rng=1}] at @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,limit=1,sort=nearest] facing entity @s feet rotated ~ 0 positioned ^ ^-.5 ^10 run tp @s ~ ~ ~ ~90 ~
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] unless entity @s[scores={deeper_dark.shockwave.turn_rng=1}] at @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,limit=1,sort=nearest] facing entity @s feet rotated ~ 0 positioned ^ ^-.5 ^10 run tp @s ~ ~ ~ ~-90 ~
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] run tp @s ^ ^ ^1
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if predicate deeper_dark:chance_50 if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] positioned ~ ~.5 ~-10 if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=0...5] at @s rotated 0 0 run tp @s ^ ^ ^1 ~ 0
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if predicate deeper_dark:chance_50 if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] positioned ~10 ~.5 ~ if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=0...5] at @s rotated 90 0 run tp @s ^ ^ ^1 ~ 0
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if predicate deeper_dark:chance_50 if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] positioned ~ ~.5 ~10 if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=0...5] at @s rotated 180 0 run tp @s ^ ^ ^1 ~ 0
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if predicate deeper_dark:chance_50 if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] positioned ~-10 ~.5 ~ if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=0...5] at @s rotated -90 0 run tp @s ^ ^ ^1 ~ 0
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] positioned ~1 ~ ~1 unless block ~ ~ ~ #deeper_dark:shockwave_immune run setblock ~ ~ ~ minecraft:air destroy
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] positioned ~1 ~ ~ unless block ~ ~ ~ #deeper_dark:shockwave_immune run setblock ~ ~ ~ minecraft:air destroy
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] positioned ~1 ~ ~-1 unless block ~ ~ ~ #deeper_dark:shockwave_immune run setblock ~ ~ ~ minecraft:air destroy
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] positioned ~ ~ ~1 unless block ~ ~ ~ #deeper_dark:shockwave_immune run setblock ~ ~ ~ minecraft:air destroy
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] positioned ~ ~ ~ unless block ~ ~ ~ #deeper_dark:shockwave_immune run setblock ~ ~ ~ minecraft:air destroy
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] positioned ~ ~ ~-1 unless block ~ ~ ~ #deeper_dark:shockwave_immune run setblock ~ ~ ~ minecraft:air destroy
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] positioned ~-1 ~ ~1 unless block ~ ~ ~ #deeper_dark:shockwave_immune run setblock ~ ~ ~ minecraft:air destroy
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] positioned ~-1 ~ ~ unless block ~ ~ ~ #deeper_dark:shockwave_immune run setblock ~ ~ ~ minecraft:air destroy
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] positioned ~-1 ~ ~-1 unless block ~ ~ ~ #deeper_dark:shockwave_immune run setblock ~ ~ ~ minecraft:air destroy



execute as @e[tag=deeper_dark.shockwave,type=pig] at @s unless entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] align xyz run tp @s ~.5 ~ ~.5
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s unless entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] run tp @s ^ ^ ^1
#turning
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] run scoreboard players set @s deeper_dark.shockwave.has_turned 1
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s unless entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..16] if entity @e[scores={deeper_dark.shockwave.turn_rng=1,deeper_dark.shockwave.has_turned=0}] store success score @s deeper_dark.shockwave.has_turned rotated ~90 0 positioned ^-3 ^ ^3 unless predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ unless predicate deeper_dark:in_amethyst_mineshaft positioned ^-3 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft at @s run tp @s ^ ^ ^ ~90 ~
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s unless entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..16] if entity @s[scores={deeper_dark.shockwave.turn_rng=0,deeper_dark.shockwave.has_turned=0}] store success score @s deeper_dark.shockwave.has_turned rotated ~-90 0 positioned ^-3 ^ ^3 unless predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ unless predicate deeper_dark:in_amethyst_mineshaft positioned ^-3 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft at @s run tp @s ^ ^ ^ ~-90 ~
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s unless entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..16] if entity @s[scores={deeper_dark.shockwave.has_turned=0}] store success score @s deeper_dark.shockwave.has_turned unless block ^ ^ ^3 #deeper_dark:shockwave_ignore rotated ~90 0 positioned ^-3 ^ ^3 unless predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ unless predicate deeper_dark:in_amethyst_mineshaft positioned ^-3 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft at @s run tp @s ^ ^ ^ ~90 ~
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s unless entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..16] if entity @s[scores={deeper_dark.shockwave.has_turned=0}] store success score @s deeper_dark.shockwave.has_turned unless block ^ ^ ^3 #deeper_dark:shockwave_ignore rotated ~-90 0 positioned ^-3 ^ ^3 unless predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft positioned ^1 ^ ^ unless predicate deeper_dark:in_amethyst_mineshaft positioned ^-3 ^ ^ if predicate deeper_dark:in_amethyst_mineshaft at @s run tp @s ^ ^ ^ ~-90 ~
execute if score Game deeper_dark.gamerule.shockwave_can_dig matches 1 as @e[tag=deeper_dark.shockwave,type=pig] at @s if entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..180] unless block ^ ^ ^1 #deeper_dark:shockwave_ignore if predicate deeper_dark:chance_50 if predicate deeper_dark:chance_50 if predicate deeper_dark:chance_50 if predicate deeper_dark:chance_50 if predicate deeper_dark:chance_50 run function deeper_dark:shockwave/dig
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if entity @e[type=warden,distance=..50] unless block ^ ^ ^1 #deeper_dark:shockwave_ignore run function deeper_dark:shockwave/dig
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s unless entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..11] unless block ^ ^ ^1 #deeper_dark:shockwave_ignore if entity @s[scores={deeper_dark.shockwave.has_turned=0}] store success score @s deeper_dark.shockwave.has_turned run tp @s ~ ~ ~ ~180 ~
execute as @e[tag=deeper_dark.shockwave,scores={deeper_dark.shockwave.has_turned=1}] store result score @s deeper_dark.shockwave.direction run data get entity @s Rotation[0]
execute as @e[tag=deeper_dark.shockwave,scores={deeper_dark.shockwave.has_turned=1}] on passengers store result entity @s Rotation[0] float 1 on vehicle run scoreboard players get @s deeper_dark.shockwave.direction
execute as @e[tag=deeper_dark.shockwave,scores={deeper_dark.shockwave.has_turned=1}] on passengers at @s run rotate @s[tag=deeper_dark.shockwave_display_rotate_1] ~-90 ~
execute as @e[tag=deeper_dark.shockwave,scores={deeper_dark.shockwave.has_turned=1}] on passengers at @s run rotate @s[tag=deeper_dark.shockwave_display_rotate_2] ~180 ~
execute as @e[tag=deeper_dark.shockwave,scores={deeper_dark.shockwave.has_turned=1}] at @s unless entity @e[type=marker,tag=deeper_dark.amethyst_mineshaft.floor,distance=..16] store success score @s deeper_dark.shockwave.turn_rng if predicate deeper_dark:chance_50
execute as @e[tag=deeper_dark.shockwave] at @s run scoreboard players set @s deeper_dark.shockwave.has_turned 0

#display
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s unless entity @e[tag=deeper_dark.shockwave_trail,distance=0...5] run summon minecraft:marker ~ ~.5 ~ {Tags:["deeper_dark.shockwave_trail","deeper_dark.shockwave_part"]}
execute as @e[tag=deeper_dark.shockwave_trail] at @s if entity @e[tag=deeper_dark.shockwave,type=pig,distance=3.1..5] run particle large_smoke ~ ~ ~ 0 0 0 .05 20 force
execute as @e[tag=deeper_dark.shockwave_trail] at @s if entity @e[tag=deeper_dark.shockwave,type=pig,distance=3.1..5] run particle minecraft:sculk_soul ~ ~ ~ 0 0 0 .1 20 normal
execute as @e[tag=deeper_dark.shockwave_trail] at @s if entity @e[tag=deeper_dark.shockwave,type=pig,distance=3.1..5] run particle minecraft:soul_fire_flame ~ ~ ~ 0.4 0.4 0.4 .01 5 normal
execute as @e[tag=deeper_dark.shockwave_trail] at @s if entity @e[tag=deeper_dark.shockwave,type=pig,distance=3.1..5] run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 1 20 force
execute as @e[tag=deeper_dark.shockwave_trail] at @s unless entity @e[tag=deeper_dark.shockwave,type=pig,distance=0..3.1] run tag @s add deeper_dark.silent_despawn
effect clear @e[tag=deeper_dark.shockwave,type=pig] minecraft:glowing

#sound
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s positioned ~-500 ~-6 ~-500 run playsound minecraft:block.sculk_sensor.clicking_stop hostile @a[dy=12,dx=1000,dz=1000] ~500 ~6 ~500 15 0
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s positioned ~-500 ~-6 ~-500 run playsound minecraft:entity.warden.ambient hostile @a[dy=12,dx=1000,dz=1000] ~500 ~6 ~500 4 2
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s positioned ~-500 ~-6 ~-500 run playsound minecraft:entity.warden.angry hostile @a[dy=12,dx=1000,dz=1000] ~500 ~6 ~500 1 2
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if entity @p[distance=0..16] if entity @s[nbt={HurtTime:9s}] run playsound minecraft:block.sculk_catalyst.break hostile @a ~ ~ ~ 1 0

#light
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s if score Game deeper_dark.gamerule.shockwave_emits_light matches 1 at @s if block ~ ~ ~ minecraft:air if loaded ~ ~ ~16 if loaded ~ ~ ~16 if loaded ~-16 ~ ~ if loaded ~-16 ~ ~ if loaded ~ ~ ~ positioned ~-500 ~-6 ~-500 if entity @p[gamemode=!spectator,dy=12,dx=1000,dz=1000] positioned ~500 ~6 ~500 run function deeper_dark:shockwave/light

execute as @e[tag=deeper_dark.shockwave,type=pig] at @s positioned ~-500 ~-6 ~-500 as @a[gamemode=!spectator,dy=12,dx=1000,dz=1000,nbt=!{abilities:{flying:1b}}] positioned ~500 ~6 ~500 if entity @s[distance=0..10] run function deeper_dark:screen_shake
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s positioned ~-500 ~-6 ~-500 as @a[gamemode=!spectator,gamemode=!creative,dy=12,dx=1000,dz=1000] positioned ~500 ~6 ~500 if entity @s[distance=0..10] run effect give @s minecraft:darkness 1 0

#attack
tag @e[tag=deeper_dark.shockwave_target] remove deeper_dark.shockwave_target
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s as @e[distance=..5,type=!item,type=!minecraft:experience_orb,tag=!deeper_dark.shockwave_part,type=!marker,predicate=!deeper_dark:sculk_entity,predicate=deeper_dark:living] if data entity @s {HurtTime:0s} if data entity @s Health at @s anchored eyes positioned ^ ^ ^ \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @e[tag=deeper_dark.shockwave,limit=1,sort=nearest] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @e[tag=deeper_dark.shockwave,limit=1,sort=nearest] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @e[tag=deeper_dark.shockwave,limit=1,sort=nearest] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @e[tag=deeper_dark.shockwave,limit=1,sort=nearest] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @e[tag=deeper_dark.shockwave,limit=1,sort=nearest] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @e[tag=deeper_dark.shockwave,limit=1,sort=nearest] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @e[tag=deeper_dark.shockwave,limit=1,sort=nearest] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @e[tag=deeper_dark.shockwave,limit=1,sort=nearest] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @e[tag=deeper_dark.shockwave,limit=1,sort=nearest] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @e[tag=deeper_dark.shockwave,limit=1,sort=nearest] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore run tag @s add deeper_dark.shockwave_target
tag @a[gamemode=spectator] remove deeper_dark.shockwave_target
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s as @e[tag=deeper_dark.shockwave_target] at @s run stopsound @s music
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s as @e[tag=deeper_dark.shockwave_target] at @s run playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 2 2
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s as @e[tag=deeper_dark.shockwave_target] at @s run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 2 0
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s as @e[tag=deeper_dark.shockwave_target] unless entity @s[gamemode=creative] run effect give @s minecraft:blindness 3 1 true
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s as @e[tag=deeper_dark.shockwave_target] unless entity @s[gamemode=creative] run effect give @s minecraft:darkness 10 0 true
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s as @e[tag=deeper_dark.shockwave_target] at @s store result storage deeper_dark:data damage int 1 run random value 10..25
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s as @e[tag=deeper_dark.shockwave_target] at @s run function deeper_dark:shockwave/attack with storage deeper_dark:data
tag @e[tag=deeper_dark.shockwave_target] remove deeper_dark.shockwave_target


#lawnmower easter egg
execute as @e[tag=deeper_dark.shockwave,type=pig] at @s run fill ^-2 ^-1 ^-2 ^2 ^-1 ^-2 minecraft:air replace minecraft:short_grass




execute as @e[tag=deeper_dark.shockwave_light] at @s unless entity @e[tag=deeper_dark.shockwave,distance=0..2] if block ~ ~ ~ light run setblock ~ ~ ~ air
execute as @e[tag=deeper_dark.shockwave_light] at @s unless entity @e[tag=deeper_dark.shockwave,distance=0..2] align y run particle large_smoke ~ ~.5 ~ 0 0 0 .05 20 force
execute as @e[tag=deeper_dark.shockwave_light] at @s unless entity @e[tag=deeper_dark.shockwave,distance=0..2] align y run particle minecraft:sculk_soul ~ ~.5 ~ 0 0 0 .1 20 normal
execute as @e[tag=deeper_dark.shockwave_light] at @s unless entity @e[tag=deeper_dark.shockwave,distance=0..2] align y run particle minecraft:soul_fire_flame ~ ~.5 ~ 0 0 0 .01 5 normal
execute as @e[tag=deeper_dark.shockwave_light] at @s unless entity @e[tag=deeper_dark.shockwave,distance=0..2] align y run particle minecraft:sonic_boom ~ ~.5 ~ 0 0 0 1 20 force
#execute as @e[tag=deeper_dark.shockwave_light] at @s unless entity @e[tag=deeper_dark.shockwave,distance=0..2] positioned ~ ~.5 ~ run function deeper_dark:shockwave/shock
execute as @e[tag=deeper_dark.shockwave_light] at @s unless entity @e[tag=deeper_dark.shockwave,distance=0..2] run tag @s add deeper_dark.silent_despawn

