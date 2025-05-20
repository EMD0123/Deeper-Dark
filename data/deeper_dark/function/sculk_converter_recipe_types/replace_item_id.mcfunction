$execute unless predicate {"condition":"minecraft:all_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"nbt":"{data:{Item:{id:\"$(replace)\"}}}"}},{"condition":"minecraft:value_check","value":{"type":"minecraft:score","target":"this","score":"deeper_dark.sculk_converter.xp"},"range":{"min":$(xp)}},{"condition":"minecraft:value_check","value":{"type":"minecraft:score","target":"this","score":"deeper_dark.sculk_converter.flames"},"range":{"min":$(flames)}}]} run return fail
$data modify entity @s data.newItem set value {id:"$(with)",Count:1}
$scoreboard players set @s deeper_dark.sculk_converter.flame_cost $(flames)
$scoreboard players set @s deeper_dark.sculk_converter.xp_cost $(xp)
$scoreboard players set @s deeper_dark.sculk_converter.conversion_time $(conversion_time)

