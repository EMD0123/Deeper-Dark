tag @s add deeper_dark.silent_despawn
tag @e[tag=deeper_dark.selected_all] add deeper_dark.silent_despawn
execute as @e[tag=deeper_dark.selected_all] at @s positioned ^ ^.75 ^ run particle minecraft:block{block_state:sculk} ~ ~ ~ .3 .3 .3 .01 20
tag @n[type=minecraft:item,distance=0...6,nbt={Age:0s,Item:{id:"minecraft:sculk_sensor",count:1}}] add deeper_dark.silent_despawn
execute as @n[type=minecraft:item,distance=0...6,nbt={Age:0s,Item:{id:"minecraft:sculk_sensor",count:1}}] run loot spawn ~ ~ ~ loot deeper_dark:items/sculk_tentacle