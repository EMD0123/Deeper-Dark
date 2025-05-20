$execute unless predicate {"condition":"minecraft:all_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"nbt":"{data:{Item:{id:\"$(replace)\"}}}"}},{"condition":"minecraft:value_check","value":{"type":"minecraft:score","target":"this","score":"deeper_dark.sculk_converter.xp"},"range":{"min":$(xp)}},{"condition":"minecraft:value_check","value":{"type":"minecraft:score","target":"this","score":"deeper_dark.sculk_converter.flames"},"range":{"min":$(flames)}}]} run return fail
execute at @s run summon minecraft:item_display ~ ~ ~ {Tags:["deeper_dark.sculk_converter.recipes.item"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
data modify entity @n[tag=deeper_dark.sculk_converter.recipes.item] item set from entity @s data.Item
$item modify entity @e[tag=deeper_dark.sculk_converter.recipes.item,limit=1,sort=nearest] container.0 $(with)
data modify entity @s data.newItem set from entity @n[tag=deeper_dark.sculk_converter.recipes.item] item
kill @e[tag=deeper_dark.sculk_converter.recipes.item]
$scoreboard players set @s deeper_dark.sculk_converter.flame_cost $(flames)
$scoreboard players set @s deeper_dark.sculk_converter.xp_cost $(xp)
$scoreboard players set @s deeper_dark.sculk_converter.conversion_time $(conversion_time)

