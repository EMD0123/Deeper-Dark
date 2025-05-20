execute if score @s deeper_dark.sonicattack matches 1.. run scoreboard players add @s deeper_dark.sonicattack 3
execute if block ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active] unless score @s deeper_dark.sonicattack matches 1.. unless score @s deeper_dark.sonicattack matches ..-1 run scoreboard players set @s deeper_dark.sonicattack 3
execute if score @s deeper_dark.sonicattack matches 3 run playsound minecraft:entity.warden.sonic_charge block @a ~ ~ ~ 2 1
execute if score @s deeper_dark.sonicattack matches 3 run function deeper_dark:sonic_blaster/ring/4
execute if score @s deeper_dark.sonicattack matches 3 run tag @e[tag=deeper_dark.sonic_blaster_ring_1,distance=0...1,limit=4,sort=nearest] add deeper_dark.silent_despawn
execute if score @s deeper_dark.sonicattack matches 30..32 run function deeper_dark:sonic_blaster/ring/5
execute if score @s deeper_dark.sonicattack matches 30..32 run tag @e[tag=deeper_dark.sonic_blaster_ring_2,distance=0...1,limit=4,sort=nearest] add deeper_dark.silent_despawn
execute if score @s deeper_dark.sonicattack matches 60..62 run function deeper_dark:sonic_blaster/ring/6
execute if score @s deeper_dark.sonicattack matches 60..62 run tag @e[tag=deeper_dark.sonic_blaster_ring_3,distance=0...1,limit=4,sort=nearest] add deeper_dark.silent_despawn
execute if score @s deeper_dark.sonicattack matches 120.. run playsound minecraft:entity.warden.sonic_boom block @a ~ ~ ~ 2 1
execute if score @s deeper_dark.sonicattack matches 120.. run tag @s add deeper_dark.selected
execute if score @s deeper_dark.sonicattack matches 120.. run tag @e[tag=deeper_dark.sonic_blaster_ring_4,distance=0...1,limit=4,sort=nearest] add deeper_dark.silent_despawn
execute if score @s deeper_dark.sonicattack matches 120.. run tag @e[tag=deeper_dark.sonic_blaster_ring_5,distance=0...1,limit=4,sort=nearest] add deeper_dark.silent_despawn
execute if score @s deeper_dark.sonicattack matches 120.. run tag @e[tag=deeper_dark.sonic_blaster_ring_6,distance=0...1,limit=4,sort=nearest] add deeper_dark.silent_despawn
execute if score @s deeper_dark.sonicattack matches 120.. positioned ^ ^ ^1 run function deeper_dark:armor/sonicattack
execute if score @s deeper_dark.sonicattack matches 120.. positioned ^ ^ ^2 run function deeper_dark:armor/sonicattack
execute if score @s deeper_dark.sonicattack matches 120.. positioned ^ ^ ^3 run function deeper_dark:armor/sonicattack
execute if score @s deeper_dark.sonicattack matches 120.. positioned ^ ^ ^4 run function deeper_dark:armor/sonicattack
execute if score @s deeper_dark.sonicattack matches 120.. positioned ^ ^ ^5 run function deeper_dark:armor/sonicattack
execute if score @s deeper_dark.sonicattack matches 120.. positioned ^ ^ ^6 run function deeper_dark:armor/sonicattack
execute if score @s deeper_dark.sonicattack matches 120.. positioned ^ ^ ^7 run function deeper_dark:armor/sonicattack
execute if score @s deeper_dark.sonicattack matches 120.. positioned ^ ^ ^8 run function deeper_dark:armor/sonicattack
execute if score @s deeper_dark.sonicattack matches 120.. positioned ^ ^ ^9 run function deeper_dark:armor/sonicattack
execute if score @s deeper_dark.sonicattack matches 120.. positioned ^ ^ ^10 run function deeper_dark:armor/sonicattack
execute if score @s deeper_dark.sonicattack matches 120.. positioned ^ ^ ^11 run function deeper_dark:armor/sonicattack
execute if score @s deeper_dark.sonicattack matches 120.. positioned ^ ^ ^12 run function deeper_dark:armor/sonicattack
execute if score @s deeper_dark.sonicattack matches 120.. positioned ^ ^ ^13 run function deeper_dark:armor/sonicattack
execute if score @s deeper_dark.sonicattack matches 120.. positioned ^ ^ ^14 run function deeper_dark:armor/sonicattack
execute if score @s deeper_dark.sonicattack matches 120.. positioned ^ ^ ^15 run function deeper_dark:armor/sonicattack
execute if score @s deeper_dark.sonicattack matches 120.. positioned ^ ^ ^16 run function deeper_dark:armor/sonicattack
tag @s remove deeper_dark.selected
execute if score @s deeper_dark.sonicattack matches 120.. run scoreboard players set @s deeper_dark.sonicattack -60
execute if score @s deeper_dark.sonicattack matches ..-1 run scoreboard players add @s deeper_dark.sonicattack 1
execute if score @s deeper_dark.sonicattack matches -1 at @s run function deeper_dark:sonic_blaster/ring/1
execute if score @s deeper_dark.sonicattack matches -1 at @s run function deeper_dark:sonic_blaster/ring/2
execute if score @s deeper_dark.sonicattack matches -1 at @s run function deeper_dark:sonic_blaster/ring/3

execute unless block ~ ~ ~ sculk_sensor run function deeper_dark:sonic_blaster/break