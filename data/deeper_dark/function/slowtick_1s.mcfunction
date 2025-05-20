schedule function deeper_dark:slowtick_1s 1s
execute as @e[tag=deeper_dark.silent_despawn,type=!player] at @s run tp @s ~ ~-10000 ~
execute as @e[tag=deeper_dark.silent_despawn,type=!player] run kill @s


execute as @e[predicate=deeper_dark:in_deeper_dark,scores={deeper_dark.outofbounds=200..}] at @s run effect give @s minecraft:darkness 3 1
execute as @e[predicate=deeper_dark:in_deeper_dark,scores={deeper_dark.outofbounds=400..}] at @s run effect give @s minecraft:blindness 3 1

#shockwave
execute as @a at @s as @e[sort=nearest,limit=2,predicate=deeper_dark:in_deeper_dark,tag=deeper_dark.amethyst_mineshaft.floor] at @s positioned ~-128 ~-6 ~-128 unless entity @e[tag=deeper_dark.shockwave,type=pig,dy=12,dx=256,dz=256] if entity @p[dy=12,dx=256,dz=256,gamemode=!spectator] at @s if loaded ~ ~ ~ facing entity @e[limit=1,sort=random] feet rotated ~ 0 positioned ^ ^ ^50 unless entity @p[gamemode=!spectator,distance=..40] if predicate deeper_dark:in_amethyst_mineshaft if loaded ~ ~ ~ if block ~ ~ ~ air run function deeper_dark:shockwave/spawn
execute as @e[tag=deeper_dark.shockwave_display,limit=1,sort=random] unless predicate deeper_dark:is_passenger run kill @s


execute as @a[predicate=deeper_dark:holding_warden_tracker] at @s run function deeper_dark:items/warden_tracker_track_wardens



execute as @e[predicate=deeper_dark:in_deeper_dark,tag=deeper_dark.amethyst_mineshaft.floor,tag=!deeper_dark.amethyst_mineshaft.floor_spawned_goal] at @s if loaded ~-128 ~ ~-128 if loaded ~-128 ~ ~127 if loaded ~127 ~ ~-128 if loaded ~127 ~ ~127 run function deeper_dark:amethyst_mineshaft_generate_goal

#portal
execute as @e[type=#minecraft:item_frames,nbt={Item:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{deeper_dark:{EntrancePosition:{}}}}}},tag=!deeper_dark.invalid_portal] at @s positioned ^ ^1 ^-.5 rotated ~90 0 align xyz positioned ~.5 ~.5 ~.5 unless entity @e[distance=0...1,tag=deeper_dark.portal_display] run tag @s remove deeper_dark.active_portal
execute as @e[type=#minecraft:item_frames,nbt={Item:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{deeper_dark:{EntrancePosition:{}}}}}},tag=!deeper_dark.active_portal] at @s positioned ^ ^1 ^-.5 rotated ~90 0 align xyz positioned ~.5 ~.5 ~.5 if entity @e[distance=0...1,tag=deeper_dark.portal_display] run tag @s add deeper_dark.active_portal
execute as @e[type=#minecraft:item_frames,nbt={Item:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{deeper_dark:{EntrancePosition:{}}}}}},tag=!deeper_dark.invalid_portal] at @s unless block ^ ^ ^-.5 minecraft:reinforced_deepslate 
execute as @e[type=#minecraft:item_frames,nbt={Item:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{deeper_dark:{EntrancePosition:{}}}}}},tag=!deeper_dark.invalid_portal] at @s unless block ^ ^1 ^-.5 #deeper_dark:structure_support_noclip run tag @s add deeper_dark.invalid_portal
execute as @e[type=#minecraft:item_frames,nbt={Item:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{deeper_dark:{EntrancePosition:{}}}}}},tag=deeper_dark.invalid_portal] at @s if block ^ ^ ^-.5 minecraft:reinforced_deepslate if block ^ ^1 ^-.5 #deeper_dark:structure_support_noclip run tag @s remove deeper_dark.invalid_portal
execute as @e[type=#minecraft:item_frames,nbt={Item:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{deeper_dark:{EntrancePosition:{}}}}}},tag=!deeper_dark.invalid_portal] at @s if entity @e[tag=deeper_dark.portal_activation,distance=0..1] unless entity @e[tag=deeper_dark.portal_display,distance=0..1.5] run function deeper_dark:portal/portal

execute at @a[scores={deeper_dark.ancient_dark_active=1..},predicate=deeper_dark:in_deeper_dark,gamemode=!spectator] summon minecraft:marker run function deeper_dark:warden_spawn_location
scoreboard players remove @a[scores={deeper_dark.ancient_dark_active=1..}] deeper_dark.ancient_dark_active 1

execute as @e[type=minecraft:marker,tag=deeper_dark.arena,predicate=deeper_dark:in_deeper_dark] at @s run function deeper_dark:laboratory_generate_arena


#anticatalyst
execute as @e[tag=deeper_dark.anticatalyst_target,limit=1,sort=random] at @s unless entity @n[tag=deeper_dark.anticatalyst,distance=0..126]

#advancement
#tellraw @p {"score":{"name":"@p","objective":"deeper_dark.deepslate"}}
execute as @a[scores={deeper_dark.deepslate=20..}] if predicate {"condition":"minecraft:any_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"mainhand":{"predicates":{"minecraft:enchantments":[{"enchantments":"deeper_dark:undermine"}]}}}}}]} run advancement grant @s only deeper_dark:undermine
scoreboard players reset @a deeper_dark.deepslate

