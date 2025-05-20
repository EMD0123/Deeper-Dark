execute store result score @s deeper_dark.var run loot spawn ~ ~-10000 ~ loot deeper_dark:sculk_converter/remove_flame
#tellraw @p {"score":{"name":"@s","objective":"deeper_dark.var"}}
execute if score @s deeper_dark.var matches 1 rotated 0 0 run function deeper_dark:sculk_converter/extinguish
execute if score @s deeper_dark.var matches 1 run scoreboard players set 1 deeper_dark.var 0
execute if score @s deeper_dark.var matches 2 rotated 45 0 run function deeper_dark:sculk_converter/extinguish
execute if score @s deeper_dark.var matches 2 run scoreboard players set 2 deeper_dark.var 0
execute if score @s deeper_dark.var matches 3 rotated 90 0 run function deeper_dark:sculk_converter/extinguish
execute if score @s deeper_dark.var matches 3 run scoreboard players set 3 deeper_dark.var 0
execute if score @s deeper_dark.var matches 4 rotated 135 0 run function deeper_dark:sculk_converter/extinguish
execute if score @s deeper_dark.var matches 4 run scoreboard players set 4 deeper_dark.var 0
execute if score @s deeper_dark.var matches 5 rotated 180 0 run function deeper_dark:sculk_converter/extinguish
execute if score @s deeper_dark.var matches 5 run scoreboard players set 5 deeper_dark.var 0
execute if score @s deeper_dark.var matches 6 rotated 225 0 run function deeper_dark:sculk_converter/extinguish
execute if score @s deeper_dark.var matches 6 run scoreboard players set 6 deeper_dark.var 0
execute if score @s deeper_dark.var matches 7 rotated 270 0 run function deeper_dark:sculk_converter/extinguish
execute if score @s deeper_dark.var matches 7 run scoreboard players set 7 deeper_dark.var 0
execute if score @s deeper_dark.var matches 8 rotated 315 0 run function deeper_dark:sculk_converter/extinguish
execute if score @s deeper_dark.var matches 8 run scoreboard players set 8 deeper_dark.var 0