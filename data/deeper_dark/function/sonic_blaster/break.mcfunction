tag @s add deeper_dark.silent_despawn
execute positioned ^ ^ ^0.51 run tag @e[tag=deeper_dark.sonic_blaster_display,distance=0...1,limit=4,sort=nearest] add deeper_dark.silent_despawn
tag @e[tag=deeper_dark.sonic_blaster_display,distance=0...1,sort=nearest] add deeper_dark.silent_despawn
tag @n[type=minecraft:item,distance=0...6,nbt={Age:0s,Item:{id:"minecraft:sculk_sensor",count:1}}] add deeper_dark.silent_despawn
execute as @n[type=minecraft:item,distance=0...6,nbt={Age:0s,Item:{id:"minecraft:sculk_sensor",count:1}}] run loot spawn ~ ~ ~ loot deeper_dark:items/sonic_blaster
