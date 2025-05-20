#spawn
function deeper_dark:tentacle/validate
execute at @e[tag=deeper_dark.selected_all] run scoreboard players add @s deeper_dark.var 1
#somebody is stealing the 6es!
execute unless score @s deeper_dark.var matches 6 run function deeper_dark:tentacle/setup
#tellraw @a {"score":{"name":"@s","objective":"deeper_dark.var"}}
scoreboard players set @e[tag=deeper_dark.selected_all] deeper_dark.var 0
#execute if score @s deeper_dark.var matches ..4 run say @s


#attack
execute if data block ~ ~ ~ listener.selector.event.pos unless data entity @s data.target run function deeper_dark:tentacle/prep_attack_1
execute if data block ~ ~ ~ listener.event.pos unless data entity @s data.target run function deeper_dark:tentacle/prep_attack_1
execute unless score @s deeper_dark.var matches 1 unless data entity @s data.target at @e[type=minecraft:block_display,tag=deeper_dark.selected_all] positioned ^ ^.75 ^ positioned ~-.5 ~-.5 ~-.5 if entity @n[dx=0,dy=0,dz=0,predicate=deeper_dark:living,type=!minecraft:warden] run function deeper_dark:tentacle/prep_attack_2


execute if score @s deeper_dark.tentacle_attack_time matches 1.. run scoreboard players add @s deeper_dark.tentacle_attack_time 1
execute if block ~ ~ ~ minecraft:sculk_sensor[sculk_sensor_phase=active] if data entity @s data.target unless score @s deeper_dark.tentacle_attack_time matches 1.. run scoreboard players add @s deeper_dark.tentacle_attack_time 1


execute if score @s deeper_dark.tentacle_attack_time matches 1..2 run playsound minecraft:block.sculk_sensor.clicking_stop block @a ~ ~ ~ 1 1
execute if score @s deeper_dark.tentacle_attack_time matches 1..10 as @n[tag=deeper_dark.selected_1] at @s run rotate @s ~ ~-10
execute if score @s deeper_dark.tentacle_attack_time matches 1..10 as @n[tag=deeper_dark.selected_2] at @s run rotate @s ~ ~-20
execute if score @s deeper_dark.tentacle_attack_time matches 1..10 as @n[tag=deeper_dark.selected_3] at @s run rotate @s ~ ~-30
execute if score @s deeper_dark.tentacle_attack_time matches 1..10 as @n[tag=deeper_dark.selected_4] at @s run rotate @s ~ ~-40
execute if score @s deeper_dark.tentacle_attack_time matches 1..10 as @n[tag=deeper_dark.selected_5] at @s run rotate @s ~ ~-50
execute if score @s deeper_dark.tentacle_attack_time matches 1..10 as @n[tag=deeper_dark.selected_6] at @s run rotate @s ~ ~-60
execute if score @s deeper_dark.tentacle_attack_time matches 1..30 run tag @s add deeper_dark.selected
execute if score @s deeper_dark.tentacle_attack_time matches 1..3 as @e[type=minecraft:block_display,tag=deeper_dark.selected_all] at @s run function deeper_dark:tentacle/turn_to with entity @n[tag=deeper_dark.selected] data.target
execute if score @s deeper_dark.tentacle_attack_time matches 10.. run scoreboard players set @s deeper_dark.var 1
execute if score @s deeper_dark.tentacle_attack_time matches 10 as @e[type=minecraft:block_display,tag=deeper_dark.selected_all] at @s run rotate @s ~ ~60
execute if score @s deeper_dark.tentacle_attack_time matches 11.. as @e[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=!deeper_dark.tentacle.landed,sort=nearest] at @s run function deeper_dark:tentacle/attack
execute if score @s deeper_dark.tentacle_attack_time matches 1..30 run tag @s remove deeper_dark.selected
execute if score @s deeper_dark.tentacle_attack_time matches 30 run data remove entity @s data.target
execute unless data entity @s data.target run scoreboard players set @s deeper_dark.tentacle_attack_time 0
execute unless data entity @s data.target run tag @e[tag=deeper_dark.selected_all,tag=deeper_dark.tentacle.landed] remove deeper_dark.tentacle.landed



#animate

execute unless score @s deeper_dark.var matches 1 as @e[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=!deeper_dark.selected_1] at @s positioned ^ ^ ^1 rotated ~ 0 run rotate @s facing ^ ^-0.01 ^0.01
execute unless score @s deeper_dark.var matches 1 as @e[type=minecraft:block_display,tag=deeper_dark.selected_1] at @s positioned ^ ^ ^1 rotated ~ 0 run rotate @s facing ^ ^ ^0.03
execute unless score @s deeper_dark.var matches 1 as @e[type=minecraft:block_display,tag=deeper_dark.selected_all] at @s run function deeper_dark:tentacle/move
execute positioned ~ ~ ~ run tp @n[type=minecraft:block_display,tag=deeper_dark.selected_1] ~ ~ ~
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_1] at @s positioned ^ ^1.25 ^ run tp @e[type=minecraft:block_display,tag=deeper_dark.selected_2] ~ ~ ~
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_2] at @s positioned ^ ^1.25 ^ run tp @e[type=minecraft:block_display,tag=deeper_dark.selected_3] ~ ~ ~
execute if score @s deeper_dark.var matches 1 if entity @e[tag=deeper_dark.selected_1,x_rotation=90] as @e[type=minecraft:block_display,tag=deeper_dark.selected_2] at @s run tp @s[x_rotation=90] ^ ^ ^.25
execute if score @s deeper_dark.var matches 1 if entity @e[tag=deeper_dark.selected_2,x_rotation=90] as @e[type=minecraft:block_display,tag=deeper_dark.selected_3] at @s run tp @s[x_rotation=90] ^ ^ ^.5
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_3] at @s positioned ^ ^1.25 ^ run tp @e[type=minecraft:block_display,tag=deeper_dark.selected_4] ~ ~ ~
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_4] at @s positioned ^ ^1.25 ^ run tp @e[type=minecraft:block_display,tag=deeper_dark.selected_5] ~ ~ ~
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_5] at @s positioned ^ ^1.25 ^ run tp @e[type=minecraft:block_display,tag=deeper_dark.selected_6] ~ ~ ~


#die
execute unless block ~ ~ ~ sculk_sensor run function deeper_dark:tentacle/break
#untag
scoreboard players set @e[tag=deeper_dark.selected_all] deeper_dark.var 1
tag @e[tag=deeper_dark.selected_1] remove deeper_dark.selected_1
tag @e[tag=deeper_dark.selected_2] remove deeper_dark.selected_2
tag @e[tag=deeper_dark.selected_3] remove deeper_dark.selected_3
tag @e[tag=deeper_dark.selected_4] remove deeper_dark.selected_4
tag @e[tag=deeper_dark.selected_5] remove deeper_dark.selected_5
tag @e[tag=deeper_dark.selected_6] remove deeper_dark.selected_6
tag @e[tag=deeper_dark.selected_all] remove deeper_dark.selected_all