execute unless score compare deeper_dark.var matches -1.. run data modify storage deeper_dark:data shardlines set from entity @s SelectedItem.components."minecraft:lore"
execute store result score x deeper_dark.var run data get entity @s SelectedItem.components."minecraft:custom_data".deeper_dark.EntrancePosition.x
execute store result score y deeper_dark.var run data get entity @s SelectedItem.components."minecraft:custom_data".deeper_dark.EntrancePosition.y
execute store result score z deeper_dark.var run data get entity @s SelectedItem.components."minecraft:custom_data".deeper_dark.EntrancePosition.z
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deeper_dark.item"]}
item replace entity @n[tag=deeper_dark.item] weapon.mainhand from entity @s weapon.mainhand
item modify entity @n[tag=deeper_dark.item] weapon.mainhand [ { "function": "minecraft:set_lore", "entity": "this", "lore": [ [ { "score": { "objective": "deeper_dark.var", "name": "x" }, "color": "gray", "italic": false }, { "text": " " }, { "score": { "objective": "deeper_dark.var", "name": "y" } }, { "text": " " }, { "score": { "objective": "deeper_dark.var", "name": "z" } }, { "text": " " }, { "entity": "@s", "nbt": "SelectedItem.components.\"minecraft:custom_data\".deeper_dark.EntrancePosition.dim" } ] ], "mode": "replace_all" } ]
execute store success score compare deeper_dark.var run data modify entity @n[tag=deeper_dark.item] equipment.mainhand.components."minecraft:lore".[0] set from storage deeper_dark:data shardlines[0]
scoreboard players add @s deeper_dark.var 0
execute if score compare deeper_dark.var matches 0 store result storage deeper_dark:data shardlines int 1 run scoreboard players get @s deeper_dark.var
execute if score compare deeper_dark.var matches 0 run return run function deeper_dark:remove_shard_label2 with storage deeper_dark:data


kill @e[tag=deeper_dark.item]
scoreboard players add @s deeper_dark.var 1
data remove storage deeper_dark:data shardlines[0]
execute unless score compare deeper_dark.var matches 0 if data storage deeper_dark:data shardlines[0] run function deeper_dark:remove_shard_label