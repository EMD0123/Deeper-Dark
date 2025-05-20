scoreboard objectives add deeper_dark.var dummy
data modify entity @s data.Item set from block ~ ~ ~ Items[0]
execute if data entity @s data.Item run data modify entity @s data.Item.count set value 1
execute store result score @s deeper_dark.var run data get block ~ ~ ~ Items[0].count
scoreboard players remove @s deeper_dark.var 1
execute store result block ~ ~ ~ Items.[0].count byte 1 run scoreboard players get @s deeper_dark.var
execute if score @s deeper_dark.var matches 0 run data remove block ~ ~ ~ Items[0]