$execute store result score Game deeper_dark.var store result storage deeper_dark:data enchantment_level short 1 run data get entity @e[tag=deeper_dark.sculk_converter.recipes.item,limit=1,sort=nearest] data.enchantments."$(enchantment)"
$execute store result score old deeper_dark.var run data get entity @e[tag=deeper_dark.sculk_converter.recipes.item2,limit=1,sort=nearest] equipment.mainhand.components."minecraft:enchantments"."$(enchantment)"

#$say $(enchantment)
#tellraw @p {"score":{"name":"Game","objective":"deeper_dark.var"}}

execute unless score Game deeper_dark.var > old deeper_dark.var run return fail
$data remove entity @e[tag=deeper_dark.sculk_converter.recipes.item,limit=1,sort=nearest] data.enchantments."$(enchantment)"
function deeper_dark:sculk_converter/recipes/enchantment_addition/apply with storage deeper_dark:data