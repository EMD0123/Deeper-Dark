execute if data entity @s Inventory[0] run loot spawn ~ ~ ~ loot deeper_dark:drop
execute as @e[nbt={Item:{tag:{deeper_dark_deathloot:1b}}}] run data merge entity @s {Age:-32768,Invulnerable:1b}
execute as @e[nbt={Item:{tag:{deeper_dark_deathloot:1b}}}] at @s run data modify entity @s Item set from entity @s Item.tag.deeper_dark_apply_nbt
kill @e[nbt={Item:{tag:{deeper_dark_deathloot:1b}}}]
clear @s