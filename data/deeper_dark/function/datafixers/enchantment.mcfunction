summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deeper_dark.item"]}
$item replace entity @e[tag=deeper_dark.item,limit=1,sort=nearest] weapon.mainhand from entity @s $(slot)
execute if data entity @e[tag=deeper_dark.item,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".deeper_dark_stored_enchantment run data modify entity @e[tag=deeper_dark.item,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".deeper_dark_enchantments[] set from entity @e[tag=deeper_dark.item,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".deeper_dark_stored_enchantment
item modify entity @e[tag=deeper_dark.item,limit=1,sort=nearest] weapon.mainhand deeper_dark:datafixer_2
data remove entity @e[tag=deeper_dark.item,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".deeper_dark_enchantments
data remove entity @e[tag=deeper_dark.item,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".deeper_dark_stored_enchantment
data remove entity @e[tag=deeper_dark.item,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".deeper_dark_enchanted_book
execute store result score @e[tag=deeper_dark.item,limit=1,sort=nearest] deeper_dark.var run data get entity @e[tag=deeper_dark.item,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data"
execute if score @e[tag=deeper_dark.item,limit=1,sort=nearest] deeper_dark.var matches 0 run data remove entity @e[tag=deeper_dark.item,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data"
$item replace entity @s $(slot) from entity @e[tag=deeper_dark.item,limit=1,sort=nearest] weapon.mainhand
kill @e[tag=deeper_dark.item]