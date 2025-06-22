#data modify storage deeper_dark:data enchantment set from entity @p SelectedItem.components."minecraft:enchantments"
$data modify storage deeper_dark:data enchantment set value '$(enchantments)'
#$say $(enchantments)
scoreboard players set Game deeper_dark.var 0
data modify storage deeper_dark:data enchantment set string storage deeper_dark:data enchantment 2
function deeper_dark:sculk_converter/recipes/enchantment_addition/get2
#say get 1