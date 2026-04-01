advancement revoke @s only deeper_dark:functions/forgotten_recipe
execute if entity @s[tag=deeper_dark.used_forgotten_recipe2] run return run tag @s add deeper_dark.used_forgotten_recipe
execute if items entity @s weapon.mainhand minecraft:enchanted_book[minecraft:custom_data~{deeper_dark_forgotten_recipe:true}] run function deeper_dark:items/forgotten_recipe/activate2 with entity @s SelectedItem.components."minecraft:custom_data"
playsound minecraft:item.book.page_turn ui @s ~ ~ ~ 1 1 1
tag @s add deeper_dark.used_forgotten_recipe
