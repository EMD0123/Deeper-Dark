execute store result score @s deeper_dark.var run data get block ~ ~ ~ cursors[0].charge
data modify storage deeper_dark:data dimension set from entity @s data.dimension
scoreboard players operation @s deeper_dark.sculk_converter.xp += @s deeper_dark.var
data remove block ~ ~ ~ cursors[0].charge
execute if score @s deeper_dark.sculk_converter.xp matches 31.. run scoreboard players set @s deeper_dark.sculk_converter.xp 30
data remove entity @s data.Item.Slot
execute if data entity @s data.Item unless score @s deeper_dark.sculk_converter.conversion_time matches 1.. run function #deeper_dark:sculk_converter_recipes
#make sure it changed
data modify entity @s data.testItem set from entity @s data.newItem
execute store success score @s deeper_dark.var run data modify entity @s data.testItem set from entity @s data.Item
execute if score @s deeper_dark.var matches 0 run scoreboard players set @s deeper_dark.sculk_converter.conversion_time 0
#execute if score @s deeper_dark.var matches 0 run say @s