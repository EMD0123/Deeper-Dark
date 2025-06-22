execute unless predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:score","target":"this","score":"deeper_dark.sculk_converter.xp"},"range":{"min":30}} run return fail
summon minecraft:item_display ~ ~ ~ {Tags:["deeper_dark.sculk_converter.recipes.item"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deeper_dark.sculk_converter.recipes.item2"]}
data modify entity @s data.newItem set from entity @s data.Item
data modify entity @e[tag=deeper_dark.sculk_converter.recipes.item,limit=1,sort=nearest] item set from entity @s data.Item
data modify entity @e[tag=deeper_dark.sculk_converter.recipes.item2,limit=1,sort=nearest] equipment.mainhand set from entity @s data.Item
item modify entity @e[tag=deeper_dark.sculk_converter.recipes.item,limit=1,sort=nearest] container.0 deeper_dark:enchantment_addition
execute as @e[tag=deeper_dark.sculk_converter.recipes.item,limit=1,sort=nearest] run data modify entity @s data.enchantments set from entity @s item.components."minecraft:enchantments"
execute as @e[tag=deeper_dark.sculk_converter.recipes.item,limit=1,sort=nearest] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"weapon":{"components":{"minecraft:enchantments":{}}}}}} run return fail
execute if data entity @n[tag=deeper_dark.sculk_converter.recipes.item] item.components.minecraft:enchantments unless data entity @n[tag=deeper_dark.sculk_converter.recipes.item] {item:{id:"minecraft:enchanted_book"}} run function deeper_dark:sculk_converter/recipes/enchantment_addition/get1 with entity @e[tag=deeper_dark.sculk_converter.recipes.item,limit=1,sort=nearest] data
execute if data entity @n[tag=deeper_dark.sculk_converter.recipes.item] {item:{id:"minecraft:enchanted_book"}} run data modify entity @s data.newItem set from entity @n[tag=deeper_dark.sculk_converter.recipes.item] item
kill @e[tag=deeper_dark.sculk_converter.recipes.item]
tp @e[tag=deeper_dark.sculk_converter.recipes.item2] ~ ~-10000 ~
kill @e[tag=deeper_dark.sculk_converter.recipes.item2]
scoreboard players operation @s deeper_dark.sculk_converter.flame_cost = @s deeper_dark.sculk_converter.flames
scoreboard players set @s deeper_dark.sculk_converter.xp_cost 30
scoreboard players set @s deeper_dark.sculk_converter.conversion_time 200

