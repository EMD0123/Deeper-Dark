data modify storage deeper_dark:data enchantment set string storage deeper_dark:data enchantment 0 -1
function deeper_dark:sculk_converter/recipes/enchantment_addition/get3 with storage deeper_dark:data
execute if score Game deeper_dark.var matches 0 run function deeper_dark:sculk_converter/recipes/enchantment_addition/get2