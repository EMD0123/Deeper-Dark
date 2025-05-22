scoreboard objectives remove deeper_dark.var
scoreboard objectives add deeper_dark.var dummy
#datafixers
execute unless score first_ver deeper_dark.datafixers = current_ver deeper_dark.datafixers run function deeper_dark:datafixers
#gamerules
function deeper_dark:default_gamerules

#in
execute as @r[nbt={SelectedItem:{id:"minecraft:echo_shard"}},predicate=!deeper_dark:in_deeper_dark,tag=!deeper_dark.tp_cooldown,gamemode=!spectator] at @s if block ~ ~-.1 ~ minecraft:reinforced_deepslate at @s unless entity @e[tag=deeper_dark.portal_marker,distance=0..2] run function deeper_dark:tp_in


#out
execute as @p[nbt={SelectedItem:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{deeper_dark:{EntrancePosition:{}}}}}},predicate=deeper_dark:in_deeper_dark,tag=!deeper_dark.tp_cooldown,gamemode=!spectator] at @s unless entity @e[tag=deeper_dark.portal_marker,distance=0..2] if block ~ ~-.1 ~ minecraft:reinforced_deepslate unless entity @a[tag=deeper_dark.tp_out_player] unless entity @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark,distance=0..50] run function deeper_dark:tp_out
execute as @p[nbt={SelectedItem:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{deeper_dark:{EntrancePosition:{}}}}}},predicate=deeper_dark:in_deeper_dark,tag=!deeper_dark.tp_cooldown,gamemode=!spectator] at @s unless entity @e[tag=deeper_dark.portal_marker,distance=0..2] if block ~ ~-.1 ~ minecraft:reinforced_deepslate unless entity @a[tag=deeper_dark.tp_out_player] if entity @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark,distance=0..50] run playsound minecraft:block.respawn_anchor.charge ambient @a ~ ~ ~ 1 0 1
execute as @p[nbt={SelectedItem:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{deeper_dark:{EntrancePosition:{}}}}}},predicate=deeper_dark:in_deeper_dark,tag=!deeper_dark.tp_cooldown,gamemode=!spectator] at @s unless entity @e[tag=deeper_dark.portal_marker,distance=0..2] if block ~ ~-.1 ~ minecraft:reinforced_deepslate unless entity @a[tag=deeper_dark.tp_out_player] if entity @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark,distance=0..50] run advancement grant @s only deeper_dark:locked_out
execute as @p[nbt={SelectedItem:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{deeper_dark:{EntrancePosition:{}}}}}},predicate=deeper_dark:in_deeper_dark,tag=!deeper_dark.tp_cooldown,gamemode=!spectator] at @s unless entity @e[tag=deeper_dark.portal_marker,distance=0..2] if block ~ ~-.1 ~ minecraft:reinforced_deepslate unless entity @a[tag=deeper_dark.tp_out_player] if entity @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark,distance=0..50] run tag @s add deeper_dark.tp_cooldown


#cooldown
execute as @e[tag=deeper_dark.tp_cooldown] at @s if loaded ~ ~ ~ unless block ~ ~-.1 ~ minecraft:reinforced_deepslate unless block ~ ~-.5 ~ minecraft:reinforced_deepslate positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[dx=0.01,dy=0.01,dz=0.01,tag=deeper_dark.portal_marker] run tag @s remove deeper_dark.tp_cooldown

#particle
execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 as @a[nbt={SelectedItem:{id:"minecraft:echo_shard"}},predicate=!deeper_dark:in_deeper_dark,tag=!deeper_dark.tp_cooldown,gamemode=!spectator] at @s store success score @s deeper_dark.var run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 chain_command_block{Command:"deeper_dark.near_portal"} replace reinforced_deepslate
execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 as @a[nbt={SelectedItem:{id:"minecraft:echo_shard"}},predicate=!deeper_dark:in_deeper_dark,tag=!deeper_dark.tp_cooldown,gamemode=!spectator] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 reinforced_deepslate replace chain_command_block{Command:"deeper_dark.near_portal"}
execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 at @a[scores={deeper_dark.var=1}] run particle minecraft:sculk_soul ~ ~ ~ 2 2 2 0 1 force
execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 at @a[scores={deeper_dark.var=1}] run playsound minecraft:block.sculk_catalyst.bloom ambient @a ~ ~ ~ .75 0
scoreboard players set @a deeper_dark.var 0

execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 as @a[nbt={SelectedItem:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{deeper_dark:{EntrancePosition:{}}}}}},predicate=deeper_dark:in_deeper_dark,tag=!deeper_dark.tp_cooldown,gamemode=!spectator] at @s unless entity @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark,distance=0..50] store success score @s deeper_dark.var run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 chain_command_block{Command:"deeper_dark.near_portal"} replace reinforced_deepslate
execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 as @a[nbt={SelectedItem:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{deeper_dark:{EntrancePosition:{}}}}}},predicate=deeper_dark:in_deeper_dark,tag=!deeper_dark.tp_cooldown,gamemode=!spectator] at @s unless entity @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark,distance=0..50] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 reinforced_deepslate replace chain_command_block{Command:"deeper_dark.near_portal"}
execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 at @a[scores={deeper_dark.var=1}] run particle minecraft:sculk_soul ~ ~ ~ 2 2 2 0 1 force
execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 at @a[scores={deeper_dark.var=1}] run playsound minecraft:block.sculk_catalyst.bloom ambient @a ~ ~ ~ .75 0
scoreboard players set @a deeper_dark.var 0

execute in deeper_dark:deeper_dark if entity @e[distance=0..] run function deeper_dark:in_deeper_dark


#items
scoreboard players add @e[tag=deeper_dark.sonicattack] deeper_dark.sonicattack 1
execute as @a[scores={deeper_dark.sonicattack=1..99}] unless entity @s[x_rotation=70..90,predicate=deeper_dark:is_sneaking] run title @s actionbar {"text":"Canceled","color":"#007A8A"}
execute as @a[predicate=!deeper_dark:enchantment_sonic_boom] run scoreboard players set @s deeper_dark.sonicattack 0
execute as @a[scores={deeper_dark.sonicattack=0..99}] unless score @s deeper_dark.sonicattack matches 100..999 unless entity @s[x_rotation=70..90] run scoreboard players set @s deeper_dark.sonicattack 0
execute as @a[scores={deeper_dark.sonicattack=0..99},predicate=!deeper_dark:is_sneaking] unless score @s deeper_dark.sonicattack matches 100.. run scoreboard players set @s deeper_dark.sonicattack 0
execute at @a[scores={deeper_dark.sonicattack=3}] run playsound minecraft:entity.warden.sonic_charge ambient @a ~ ~ ~ 2 1
scoreboard players add @a[predicate=deeper_dark:enchantment_sonic_boom,x_rotation=70..90,predicate=deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=0..99}] deeper_dark.sonicattack 3
scoreboard players set @a[scores={deeper_dark.sonicattack=90..}] deeper_dark.sonicattack 100
execute as @a[predicate=deeper_dark:enchantment_sonic_boom,x_rotation=70..90,predicate=deeper_dark:is_sneaking] run title @s actionbar [{"score":{"name":"@s","objective":"deeper_dark.sonicattack"},"color":"#007A8A"},{"text":"%"}]

tag @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] add deeper_dark.selected
execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] at @s anchored eyes positioned ^ ^ ^1 run function deeper_dark:armor/sonicattack
execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] at @s anchored eyes positioned ^ ^ ^2 run function deeper_dark:armor/sonicattack
execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] at @s anchored eyes positioned ^ ^ ^3 run function deeper_dark:armor/sonicattack
execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] at @s anchored eyes positioned ^ ^ ^4 run function deeper_dark:armor/sonicattack
execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] at @s anchored eyes positioned ^ ^ ^5 run function deeper_dark:armor/sonicattack
execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] at @s anchored eyes positioned ^ ^ ^6 run function deeper_dark:armor/sonicattack
execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] at @s anchored eyes positioned ^ ^ ^7 run function deeper_dark:armor/sonicattack
execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] at @s anchored eyes positioned ^ ^ ^8 run function deeper_dark:armor/sonicattack
execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] at @s anchored eyes positioned ^ ^ ^9 run function deeper_dark:armor/sonicattack
execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] at @s anchored eyes positioned ^ ^ ^10 run function deeper_dark:armor/sonicattack
execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] at @s anchored eyes positioned ^ ^ ^11 run function deeper_dark:armor/sonicattack
execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] at @s anchored eyes positioned ^ ^ ^12 run function deeper_dark:armor/sonicattack
execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] at @s anchored eyes positioned ^ ^ ^13 run function deeper_dark:armor/sonicattack
execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] at @s anchored eyes positioned ^ ^ ^14 run function deeper_dark:armor/sonicattack
execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] at @s anchored eyes positioned ^ ^ ^15 run function deeper_dark:armor/sonicattack
tag @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] remove deeper_dark.selected

execute at @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] run playsound minecraft:entity.warden.sonic_boom ambient @a ~ ~ ~ 2 1
execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] run scoreboard players set @s deeper_dark.sonicattack -60
execute as @a[scores={deeper_dark.sonicattack=..-2}] run title @s actionbar {"text":"Cooldown","color":"#007A8A"}
execute as @a[scores={deeper_dark.sonicattack=-1}] run title @s actionbar {"text":"Ready","color":"#007A8A"}
scoreboard players add @a[scores={deeper_dark.sonicattack=..-1}] deeper_dark.sonicattack 1

execute as @e[predicate=deeper_dark:enchantment_resonate,predicate=deeper_dark:living] if data entity @s {HurtTime:1s} at @s on attacker run function deeper_dark:armor/resonate_item

execute as @a[predicate=deeper_dark:enchantment_shrieker_sense,advancements={deeper_dark:functions/using_spyglass=true}] at @s anchored eyes positioned ^ ^ ^ run function deeper_dark:armor/shrieker_sense
advancement revoke @a only deeper_dark:functions/using_spyglass
execute as @e[tag=deeper_dark.shrieker_sense_marker] run scoreboard players add @s deeper_dark.shrieker_sense_marker_duration 1
execute as @e[tag=deeper_dark.shrieker_sense_marker] at @s unless block ~ ~ ~ sculk_shrieker run tag @s add deeper_dark.silent_despawn
tag @e[tag=deeper_dark.shrieker_sense_marker,scores={deeper_dark.shrieker_sense_marker_duration=4800..}] add deeper_dark.silent_despawn

execute as @a[scores={deeper_dark.sonicattack=0},predicate=deeper_dark:holding_warden_tracker] at @s run function deeper_dark:items/warden_tracker

#blocks
scoreboard players set @e[tag=deeper_dark.tentacle_segment] deeper_dark.var 0
execute as @e[type=minecraft:block_display,tag=deeper_dark.tentacle_segment,predicate=deeper_dark:loaded] at @s unless entity @n[type=minecraft:marker,distance=..10,tag=deeper_dark.tentacles] run kill @s
execute as @e[type=minecraft:marker,tag=deeper_dark.tentacles] at @s if loaded ~ ~ ~ if entity @p[gamemode=!spectator,distance=0..32] run function deeper_dark:tentacle/ai
execute as @e[type=minecraft:block_display,scores={deeper_dark.var=0},tag=deeper_dark.tentacle_segment] unless entity @p[gamemode=!spectator,distance=0..32] run tag @s add deeper_dark.silent_despawn

execute as @e[tag=deeper_dark.sculk_claw,tag=!deeper_dark.sculk_claw.closed] at @s positioned ~-.5 ~ ~-.5 if entity @n[dx=0,dy=0,dz=0,predicate=deeper_dark:living,type=!minecraft:warden] run function deeper_dark:claw/close
execute as @e[tag=deeper_dark.sculk_claw.closed] at @s run function deeper_dark:claw/close
execute as @e[tag=deeper_dark.sculk_claw] at @s if loaded ~ ~ ~ unless block ~ ~-.1 ~ minecraft:sculk run function deeper_dark:claw/break

execute as @e[type=minecraft:marker,tag=deeper_dark.syphon] at @s if loaded ~ ~ ~ run function deeper_dark:syphon/ai
execute as @e[tag=deeper_dark.cursor_tracker] at @s run data modify entity @s data.cursors set from block ~ ~ ~ cursors
execute as @e[tag=deeper_dark.cursor_tracker] at @s run function deeper_dark:syphon/cursor

execute as @e[type=minecraft:marker,tag=deeper_dark.anticatalyst,sort=random,limit=20] at @s if loaded ~ ~ ~ run function deeper_dark:anticatalyst/ai

execute as @e[type=minecraft:marker,tag=deeper_dark.sonic_blaster] at @s if loaded ~ ~ ~ run function deeper_dark:sonic_blaster/ai

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{deeper_dark_sculk_tentacle:1b}}}}] at @s if loaded ~ ~ ~ if predicate deeper_dark:block_can_place if function deeper_dark:has_origin run function deeper_dark:tentacle/spawn
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{deeper_dark_sculk_claw:1b}}}}] at @s if loaded ~ ~ ~ if predicate deeper_dark:block_can_place if block ~ ~-1 ~ sculk if function deeper_dark:has_origin run function deeper_dark:claw/spawn
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{deeper_dark_sculk_syphon:1b}}}}] at @s if loaded ~ ~ ~ if predicate deeper_dark:block_can_place if function deeper_dark:has_origin run function deeper_dark:syphon/spawn
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{deeper_dark_anticatalyst:1b}}}}] at @s if loaded ~ ~ ~ if predicate deeper_dark:block_can_place if function deeper_dark:has_origin run function deeper_dark:anticatalyst/spawn
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{deeper_dark_sonic_blaster:1b}}}}] at @s if loaded ~ ~ ~ if predicate deeper_dark:block_can_place if function deeper_dark:has_origin run function deeper_dark:sonic_blaster/spawn
#boss
scoreboard players set @e[tag=deeper_dark.boss_segment] deeper_dark.var 0
execute as @e[tag=deeper_dark.boss_spawner] at @s if entity @p[distance=0..19,gamemode=!spectator] run function deeper_dark:boss/activate
execute as @e[tag=deeper_dark.boss] at @s run function deeper_dark:boss/ai
execute unless entity @e[tag=deeper_dark.boss] run bossbar set minecraft:deeper_dark/boss players "○"
execute as @e[type=minecraft:block_display,scores={deeper_dark.var=0},tag=deeper_dark.boss_segment] run tag @s add deeper_dark.silent_despawn
execute as @e[tag=deeper_dark.boss.death_tracker] on origin at @s if data entity @s {Health:0.0f} at @s run function deeper_dark:boss/death
kill @e[tag=deeper_dark.boss.death_tracker]
execute as @e[tag=deeper_dark.boss_hitbox] at @s run function deeper_dark:boss/death_tracker


advancement revoke @a only deeper_dark:functions/using_shield
#sculk conversion
execute as @e[tag=deeper_dark.sculk_converter] at @s if score @s deeper_dark.sculk_converter.conversion_time matches 1.. run function deeper_dark:sculk_converter/sculk_conversion_animation
execute as @e[tag=deeper_dark.sculk_converter] at @s if score @s deeper_dark.sculk_converter.conversion_time matches 1 run function deeper_dark:sculk_converter/sculk_conversion
execute if score Game deeper_dark.gamerule.disable_sculk_conversion matches 0 as @e[type=item,nbt={Item:{id:"minecraft:disc_fragment_5",components:{"minecraft:custom_data":{deeper_dark_altar_fragment:1b}}}}] at @s if block ~ ~-.1 ~ minecraft:sculk_catalyst positioned ~ ~-.1 ~ align xyz positioned ~.5 ~.5 ~.5 run function deeper_dark:sculk_converter/setup
execute as @e[tag=deeper_dark.sculk_converter] at @s if loaded ~ ~ ~ unless block ~ ~ ~ minecraft:sculk_catalyst if data entity @s data.Item run function deeper_dark:sculk_converter/hitbox_remove
execute as @e[tag=deeper_dark.sculk_converter] at @s if loaded ~ ~ ~ positioned ~ ~3 ~1 if block ~ ~ ~ minecraft:hopper[enabled=true,facing=north] unless data entity @s data.Item run function deeper_dark:sculk_converter/hopper_place
execute as @e[tag=deeper_dark.sculk_converter] at @s if loaded ~ ~ ~ positioned ~-1 ~3 ~ if block ~ ~ ~ minecraft:hopper[enabled=true,facing=east] unless data entity @s data.Item run function deeper_dark:sculk_converter/hopper_place
execute as @e[tag=deeper_dark.sculk_converter] at @s if loaded ~ ~ ~ positioned ~ ~3 ~-1 if block ~ ~ ~ minecraft:hopper[enabled=true,facing=south] unless data entity @s data.Item run function deeper_dark:sculk_converter/hopper_place
execute as @e[tag=deeper_dark.sculk_converter] at @s if loaded ~ ~ ~ positioned ~1 ~3 ~ if block ~ ~ ~ minecraft:hopper[enabled=true,facing=west] unless data entity @s data.Item run function deeper_dark:sculk_converter/hopper_place
execute as @e[tag=deeper_dark.sculk_converter] at @s if loaded ~ ~ ~ unless block ~ ~ ~ minecraft:sculk_catalyst run function deeper_dark:sculk_converter/remove_fragment
execute as @e[tag=deeper_dark.sculk_converter] at @s positioned ~ ~1 ~ run function deeper_dark:sculk_converter/display_fragments
execute as @e[tag=deeper_dark.sculk_converter] at @s run scoreboard players set @s deeper_dark.sculk_converter.flames 0
execute as @e[tag=deeper_dark.sculk_converter] at @s if loaded ~ ~ ~ rotated 0 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute as @e[tag=deeper_dark.sculk_converter] at @s if loaded ~ ~ ~ rotated 45 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute as @e[tag=deeper_dark.sculk_converter] at @s if loaded ~ ~ ~ rotated 90 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute as @e[tag=deeper_dark.sculk_converter] at @s if loaded ~ ~ ~ rotated 135 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute as @e[tag=deeper_dark.sculk_converter] at @s if loaded ~ ~ ~ rotated 180 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute as @e[tag=deeper_dark.sculk_converter] at @s if loaded ~ ~ ~ rotated 225 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute as @e[tag=deeper_dark.sculk_converter] at @s if loaded ~ ~ ~ rotated 270 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute as @e[tag=deeper_dark.sculk_converter] at @s if loaded ~ ~ ~ rotated 315 0 positioned ^ ^ ^3 if predicate deeper_dark:soul_flame if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.fragments run scoreboard players add @s deeper_dark.sculk_converter.flames 1
execute as @e[tag=deeper_dark.sculk_converter] at @s if score @s deeper_dark.sculk_converter.conversion_time matches 1.. if score @s deeper_dark.sculk_converter.flames < @s deeper_dark.sculk_converter.flame_cost run scoreboard players set @s deeper_dark.sculk_converter.conversion_time 0
execute if score Game deeper_dark.gamerule.disable_sculk_conversion matches 0 as @e[tag=deeper_dark.sculk_converter] at @s if loaded ~ ~ ~ if data block ~ ~ ~ cursors[0].charge run function deeper_dark:sculk_converter/charge
execute as @e[tag=deeper_dark.sculk_converter] at @s positioned ~ ~1.5 ~ run function deeper_dark:sculk_converter/display_xp
execute as @e[tag=deeper_dark.sculk_converter_hitbox] at @s if data entity @s interaction positioned ~ ~-2.6 ~ if data entity @e[tag=deeper_dark.sculk_converter,limit=1,sort=nearest,distance=0...1] data.Item unless score @e[tag=deeper_dark.sculk_converter,limit=1,sort=nearest,distance=0...1] deeper_dark.sculk_converter.conversion_time matches 1.. run function deeper_dark:sculk_converter/hitbox_remove
execute as @e[tag=deeper_dark.sculk_converter_hitbox] at @s if data entity @s interaction positioned ~ ~-2.6 ~ unless data entity @e[tag=deeper_dark.sculk_converter,limit=1,sort=nearest,distance=0...1] data.Item run function deeper_dark:sculk_converter/hitbox_place
execute as @e[tag=deeper_dark.sculk_converter_hitbox] at @s if data entity @s interaction run data remove entity @s interaction
execute as @e[tag=deeper_dark.sculk_converter_item] at @s positioned ~ ~-3 ~ run data modify entity @s item set from entity @e[tag=deeper_dark.sculk_converter,limit=1,sort=nearest,distance=0...1] data.Item
execute as @e[tag=deeper_dark.sculk_converter_item] at @s positioned ~ ~-3 ~ unless data entity @e[tag=deeper_dark.sculk_converter,limit=1,sort=nearest,distance=0...1] data.Item run data remove entity @s item


#shockwave
execute if entity @e[tag=deeper_dark.shockwave_part,limit=1] run function deeper_dark:shockwave/ai

#portal
execute as @e[tag=deeper_dark.portal_sync,limit=1,sort=random] at @s if loaded ~ ~ ~ if loaded ~16 ~ ~ if loaded ~-16 ~ ~ if loaded ~ ~ ~16 if loaded ~ ~ ~-16 run function deeper_dark:portal/portal_sync

execute as @e[tag=deeper_dark.portal_marker] at @s if loaded ~ ~ ~ run function deeper_dark:portal/unlight
execute as @e[tag=deeper_dark.portal_marker] at @s if loaded ~ ~ ~ unless block ~ ~ ~ light run kill @s
execute as @a at @s at @e[tag=deeper_dark.portal_display,limit=10,sort=nearest] unless entity @e[distance=0...1,tag=deeper_dark.portal_marker] if block ~ ~ ~ minecraft:light run playsound minecraft:entity.warden.death block @s ~ ~ ~ 10 0
execute as @e[tag=deeper_dark.portal_display] at @s unless entity @e[distance=0...1,tag=deeper_dark.portal_marker] if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:air
execute as @e[tag=deeper_dark.portal_display] at @s unless entity @e[distance=0...1,tag=deeper_dark.portal_marker] run kill @s
execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 as @e[tag=deeper_dark.portal_marker] if predicate deeper_dark:chance_50 at @s run particle minecraft:sculk_soul ~ ~ ~ .5 .5 .5 0.01 1 force
execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 as @e[tag=deeper_dark.portal_marker] if predicate deeper_dark:chance_50 at @s run particle minecraft:sculk_charge_pop ~ ~ ~ .5 .5 .5 0 1
execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 as @a at @s at @e[tag=deeper_dark.portal_marker,limit=1,sort=nearest] run playsound minecraft:block.sculk_catalyst.bloom block @s ~ ~ ~ 2 0

execute if score Game deeper_dark.gamerule.disable_portals matches 0 as @e[tag=deeper_dark.portal_marker] at @s positioned ~-.5 ~ ~-.5 as @n[dx=0,dy=0,dz=0,type=!marker,type=!text_display,type=!block_display,type=!item_display,type=!armor_stand,predicate=!deeper_dark:has_passenger,tag=!deeper_dark.tp_cooldown,distance=0..] at @s positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0,dy=0,dz=0,tag=deeper_dark.portal_marker] at @s[tag=!deeper_dark.tp_cooldown] run function deeper_dark:portal/prep_teleport


execute as @e[tag=deeper_dark.portal_marker] at @s unless data entity @s data.location run kill @s


#warden spawning
execute as @e[tag=deeper_dark.warden_spawned_3] at @s run tp @s ~ ~-9999.5 ~
execute as @e[tag=deeper_dark.warden_spawned_3] run tag @s remove deeper_dark.warden_spawned
execute as @e[tag=deeper_dark.warden_spawned_3] run tag @s remove deeper_dark.warden_spawned_2
execute as @e[tag=deeper_dark.warden_spawned_3] run tag @s remove deeper_dark.warden_spawned_3
execute as @e[tag=deeper_dark.warden_spawned_2] run tag @s add deeper_dark.warden_spawned_3
execute as @e[tag=deeper_dark.warden_spawned] run tag @s add deeper_dark.warden_spawned_2

#silent_despawn
execute as @e[tag=deeper_dark.silent_despawn,type=!player] at @s run tp @s ~ ~-10000 ~
execute as @e[tag=deeper_dark.silent_despawn,type=!player] run kill @s



#creative items
tellraw @a[scores={deeper_dark.items=1}] [{"hover_event":{"action":"show_text","value":[{"text":"Click on an item to get it"}]},"text":"\nItems From "},{"color":"#007A8A","hover_event":{"action":"show_text","value":[{"text":"Go To Website"}]},"text":"Deeper Dark"},{"text":":\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 2"},"color":"yellow","text":"Activated Sculk Shrieker\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 3"},"text":"Splash Potion of Blindness\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 4"},"text":"Amethyst Mineshaft Locator Compass\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 5"},"color":"yellow","text":"Warden Tracker\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 6"},"color":"aqua","text":"Conversion Altar Fragment\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 7"},"text":"Ancient Fortress Locator Compass\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 8"},"text":"Sculk Tentacle\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 9"},"text":"Sculk Claw\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 10"},"text":"Sculk Syphon\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 11"},"text":"Laboratory Locator Compass\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 12"},"color":"light_purple","text":"Anticatalyst\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 13"},"text":"Sonic Blaster\n"}\
]

loot give @a[scores={deeper_dark.items=2}] loot deeper_dark:items/activated_sculk_shrieker
loot give @a[scores={deeper_dark.items=3}] loot deeper_dark:items/splash_potion_of_blindness
loot give @a[scores={deeper_dark.items=4}] loot deeper_dark:items/locator_amethyst_mineshaft
loot give @a[scores={deeper_dark.items=5}] loot deeper_dark:items/warden_tracker
loot give @a[scores={deeper_dark.items=6}] loot deeper_dark:items/altar_fragment
loot give @a[scores={deeper_dark.items=7}] loot deeper_dark:items/locator_ancient_fortress
loot give @a[scores={deeper_dark.items=8}] loot deeper_dark:items/sculk_tentacle
loot give @a[scores={deeper_dark.items=9}] loot deeper_dark:items/sculk_claw
loot give @a[scores={deeper_dark.items=10}] loot deeper_dark:items/sculk_syphon
loot give @a[scores={deeper_dark.items=11}] loot deeper_dark:items/locator_laboratory
loot give @a[scores={deeper_dark.items=12}] loot deeper_dark:items/anticatalyst
loot give @a[scores={deeper_dark.items=13}] loot deeper_dark:items/sonic_blaster

scoreboard players reset @a deeper_dark.items
scoreboard players enable @a[gamemode=creative] deeper_dark.items