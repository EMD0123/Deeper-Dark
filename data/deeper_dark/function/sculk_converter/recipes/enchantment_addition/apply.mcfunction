$data remove entity @n[tag=deeper_dark.sculk_converter.recipes.item2] equipment.mainhand.components."minecraft:enchantments".levels."$(enchantment)"
$enchant @n[tag=deeper_dark.sculk_converter.recipes.item2] $(enchantment) $(enchantment_level)
execute store success score enchant deeper_dark.var run data modify entity @s data.newItem set from entity @n[tag=deeper_dark.sculk_converter.recipes.item2] equipment.mainhand
execute if data entity @s data.Item.components."minecraft:enchantments" if score enchant deeper_dark.var matches 1 run advancement grant @a[distance=0..10] only deeper_dark:light
#say apply