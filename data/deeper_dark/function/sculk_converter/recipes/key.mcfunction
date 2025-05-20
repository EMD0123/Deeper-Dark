#execute if dimension deeper_dark:deeper_dark run return fail
execute if data entity @s data.Item.components."minecraft:custom_data".deeper_dark.EntrancePosition run return fail
execute unless data entity @s data.dimension run return fail
execute at @s run tp @s ~ ~0.5 ~
execute store result score x deeper_dark.var run data get entity @s Pos[0]
execute store result score y deeper_dark.var run data get entity @s Pos[1]
execute store result score z deeper_dark.var run data get entity @s Pos[2]
function deeper_dark:sculk_converter_recipe_types/replace_item_using_modifier {replace:"minecraft:echo_shard",with:"deeper_dark:key_sculk_conversion",flames:2,xp:5,conversion_time:100}
execute at @s run tp @s ~ ~-0.5 ~