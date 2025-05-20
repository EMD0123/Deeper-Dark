#warden
execute as @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark,limit=1,sort=random] at @s unless data entity @s anger.suspects[0] unless entity @a[gamemode=!spectator,distance=0..,nbt=!{Health:0f}] run data remove entity @s Brain.memories.minecraft:dig_cooldown
effect give @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark] minecraft:resistance 5 1 true
#execute as @a[predicate=deeper_dark:in_deeper_dark] at @s if entity @e[type= minecraft:warden,distance=0..50] run advancement grant @s only deeper_dark:warden
execute at @a[predicate=deeper_dark:in_deeper_dark] if entity @n[type=minecraft:warden,distance=..50] run stopsound @s music
execute as @e[tag=deeper_dark.warden_death_tracker] on origin if data entity @s {Health:0.0f} at @s run summon minecraft:marker ~ ~1.5 ~ {Tags:["deeper_dark.portal_activation"]}
kill @e[tag=deeper_dark.warden_death_tracker]
execute if score Game deeper_dark.gamerule.disable_portals matches 0 as @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark] at @s if entity @e[distance=0..64,type=#minecraft:item_frames,nbt={Item:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{deeper_dark:{EntrancePosition:{}}}}}},limit=1,sort=nearest,tag=!deeper_dark.active_portal,tag=!deeper_dark.invalid_portal] run function deeper_dark:warden_death_tracker



#portal
execute at @e[tag=deeper_dark.portal_activation] run particle minecraft:sculk_soul ~ ~ ~ 0 0 0 .05 10 force
execute at @e[tag=deeper_dark.portal_activation] run particle minecraft:sculk_charge_pop ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=deeper_dark.portal_activation] at @s run tp @s ^ ^ ^.5 facing entity @e[type=#minecraft:item_frames,nbt={Item:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{deeper_dark:{EntrancePosition:{}}}}}},limit=1,sort=nearest,tag=!deeper_dark.active_portal,tag=!deeper_dark.invalid_portal] eyes
execute as @e[tag=deeper_dark.portal_activation] at @s unless entity @e[type=#minecraft:item_frames,nbt={Item:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{deeper_dark:{EntrancePosition:{}}}}}},limit=1,sort=nearest,tag=!deeper_dark.active_portal,tag=!deeper_dark.invalid_portal,distance=0..64] run kill @s




#other
execute if score Game deeper_dark.gamerule.disable_keepinventory_override matches 0 as @a[nbt={DeathTime:1s},predicate=deeper_dark:in_deeper_dark,gamemode=!spectator,gamemode=!creative] at @s run function deeper_dark:drop



#support
execute as @e[tag=deeper_dark.structure_support,predicate=deeper_dark:in_deeper_dark,predicate=deeper_dark:loaded] at @s run function deeper_dark:structure_support
#/execute align xyz run summon minecraft:marker ~.5 ~2.5 ~.5 {Tags:["deeper_dark.structure_support"]}

execute as @e[tag=deeper_dark.spawner,predicate=deeper_dark:in_deeper_dark,predicate=deeper_dark:loaded] at @s run tp @s ~ ~1 ~
execute as @e[tag=deeper_dark.spawner,predicate=deeper_dark:in_deeper_dark,predicate=deeper_dark:loaded,tag=!deeper_dark.spawner.sonic_blaster] at @s if block ~ ~ ~ minecraft:air run tag @s add deeper_dark.silent_despawn
execute as @e[tag=deeper_dark.spawner.tentacle,predicate=deeper_dark:in_deeper_dark,predicate=deeper_dark:loaded] at @s if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ sculk unless entity @n[type=minecraft:marker,distance=0..1,tag=deeper_dark.tentacles] run function deeper_dark:tentacle/spawn
execute as @e[tag=deeper_dark.spawner.claw,predicate=deeper_dark:in_deeper_dark,predicate=deeper_dark:loaded] at @s if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ sculk unless entity @n[type=minecraft:block_display,distance=0..1,tag=deeper_dark.sculk_claw] run function deeper_dark:claw/spawn
execute as @e[tag=deeper_dark.spawner.syphon,predicate=deeper_dark:in_deeper_dark,predicate=deeper_dark:loaded] at @s if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air if block ~ ~-1 ~ sculk unless entity @n[type=minecraft:marker,distance=0..1,tag=deeper_dark.syphon] run function deeper_dark:syphon/spawn
execute as @e[tag=deeper_dark.spawner.sonic_blaster,predicate=deeper_dark:in_deeper_dark,predicate=deeper_dark:loaded] at @s if block ~ ~-1 ~ minecraft:air if block ~ ~ ~ sculk if predicate {"condition":"minecraft:any_of","terms":[{"condition":"minecraft:location_check","offsetY":-3,"predicate":{"block":{"blocks":"sculk"}}},{"condition":"minecraft:location_check","offsetY":-4,"predicate":{"block":{"blocks":"sculk"}}},{"condition":"minecraft:location_check","offsetY":-5,"predicate":{"block":{"blocks":"sculk"}}},{"condition":"minecraft:location_check","offsetY":-6,"predicate":{"block":{"blocks":"sculk"}}},{"condition":"minecraft:location_check","offsetY":-7,"predicate":{"block":{"blocks":"sculk"}}},{"condition":"minecraft:location_check","offsetY":-8,"predicate":{"block":{"blocks":"sculk"}}}]} if block ~-1 ~ ~ minecraft:sculk if block ~1 ~ ~ minecraft:sculk if block ~ ~ ~-1 minecraft:sculk if block ~ ~ ~1 minecraft:sculk run tag @s add deeper_dark.silent_despawn
execute as @e[tag=deeper_dark.spawner.sonic_blaster,predicate=deeper_dark:in_deeper_dark,predicate=deeper_dark:loaded] at @s if block ~ ~-1 ~ minecraft:air if block ~ ~ ~ sculk if predicate {"condition":"minecraft:any_of","terms":[{"condition":"minecraft:location_check","offsetY":-3,"predicate":{"block":{"blocks":"sculk"}}},{"condition":"minecraft:location_check","offsetY":-4,"predicate":{"block":{"blocks":"sculk"}}},{"condition":"minecraft:location_check","offsetY":-5,"predicate":{"block":{"blocks":"sculk"}}},{"condition":"minecraft:location_check","offsetY":-6,"predicate":{"block":{"blocks":"sculk"}}},{"condition":"minecraft:location_check","offsetY":-7,"predicate":{"block":{"blocks":"sculk"}}},{"condition":"minecraft:location_check","offsetY":-8,"predicate":{"block":{"blocks":"sculk"}}}]} if block ~-1 ~ ~ minecraft:sculk if block ~1 ~ ~ minecraft:sculk if block ~ ~ ~-1 minecraft:sculk if block ~ ~ ~1 minecraft:sculk unless entity @n[type=minecraft:marker,distance=0..1,tag=deeper_dark.sonic_blaster] run function deeper_dark:sonic_blaster/spawn
kill @n[type=minecraft:marker,predicate=deeper_dark:out_of_bounds,tag=deeper_dark.spawner]

#/execute align xyz run summon minecraft:marker ~.5 ~2.5 ~.5 {Tags:["deeper_dark.spawner.tentacle","deeper_dark.spawner"]}



#out_of_bounds
execute as @a[predicate=deeper_dark:in_deeper_dark,predicate=deeper_dark:out_of_bounds,scores={deeper_dark.outofbounds=600..}] at @s if block ~ ~2 ~ minecraft:bedrock run stopsound @s ambient minecraft:ambient.soul_sand_valley.mood
execute as @a[predicate=deeper_dark:in_deeper_dark,predicate=deeper_dark:out_of_bounds,scores={deeper_dark.outofbounds=600..}] at @s if block ~ ~2 ~ minecraft:bedrock run stopsound @s music
execute as @a[predicate=deeper_dark:in_deeper_dark,predicate=deeper_dark:out_of_bounds,scores={deeper_dark.outofbounds=600..}] at @s if block ~ ~2 ~ minecraft:bedrock run advancement grant @s only deeper_dark:void
execute as @e[type=!marker,type=!text_display,type=!block_display,predicate=deeper_dark:in_deeper_dark,predicate=deeper_dark:out_of_bounds,scores={deeper_dark.outofbounds=600..}] at @s if block ~ ~2 ~ minecraft:bedrock run spreadplayers ~ ~ 0 1 under 62 false @s


execute as @e[type=!marker,type=!text_display,type=!block_display,predicate=deeper_dark:in_deeper_dark,predicate=!deeper_dark:out_of_bounds] run scoreboard players reset @s deeper_dark.outofbounds
execute as @a[predicate=deeper_dark:in_deeper_dark,predicate=deeper_dark:out_of_bounds,gamemode=!spectator] run scoreboard players add @s deeper_dark.outofbounds 1
execute as @e[type=!marker,type=!text_display,type=!block_display,predicate=deeper_dark:in_deeper_dark,predicate=deeper_dark:out_of_bounds,type=!player] run scoreboard players add @s deeper_dark.outofbounds 1

execute as @a[predicate=deeper_dark:in_deeper_dark,scores={deeper_dark.outofbounds=200..}] at @s run playsound minecraft:ambient.soul_sand_valley.mood ambient @s ~ ~ ~ .1 0 1
execute as @a[predicate=deeper_dark:in_deeper_dark,scores={deeper_dark.outofbounds=400..}] at @s run playsound minecraft:ambient.soul_sand_valley.mood ambient @s ~ ~ ~ .2 1 1
execute as @a[predicate=deeper_dark:in_deeper_dark,scores={deeper_dark.outofbounds=600..}] at @s run playsound minecraft:ambient.soul_sand_valley.mood ambient @s ~ ~ ~ .3 2 1
execute as @e[type=!marker,type=!text_display,type=!block_display,predicate=deeper_dark:in_deeper_dark,scores={deeper_dark.outofbounds=600..},nbt={OnGround:1b}] at @s run tp @s ~ ~-0.0001 ~
execute as @a[predicate=deeper_dark:in_deeper_dark,scores={deeper_dark.outofbounds=800..}] at @s run playsound minecraft:ambient.soul_sand_valley.mood ambient @s ~ ~ ~ 1 2 1
execute as @a[predicate=deeper_dark:in_deeper_dark,scores={deeper_dark.outofbounds=800..},gamemode=!creative] at @s run damage @s 2 minecraft:out_of_world
execute as @e[type=!marker,type=!text_display,type=!block_display,predicate=deeper_dark:in_deeper_dark,scores={deeper_dark.outofbounds=800..},type=!player] at @s run damage @s 2 minecraft:out_of_world

#ancient_dark_active
execute as @a[predicate=deeper_dark:in_ancient_dark,predicate=deeper_dark:touching_sculk,gamemode=!spectator] unless score @s deeper_dark.ancient_dark_active matches 1.. at @s unless entity @e[tag=deeper_dark.boss,distance=0..30] run function deeper_dark:ancient_dark_active
execute as @a[predicate=deeper_dark:in_ancient_dark,predicate=deeper_dark:touching_sculk,gamemode=!spectator] at @s run scoreboard players set @s deeper_dark.ancient_dark_active 300



#execute as @a[scores={deeper_dark.ancient_dark_active=1..}]deeper_dark.ancient_dark_active matches 1..

