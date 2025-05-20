execute store result score @s deeper_dark.distx+1 run data get entity @s Pos[0]
execute store result score @s deeper_dark.distz+1 run data get entity @s Pos[2]
scoreboard players set @s deeper_dark.distx-1 16
scoreboard players operation @s deeper_dark.distx+1 %= @s deeper_dark.distx-1
scoreboard players operation @s deeper_dark.distz+1 %= @s deeper_dark.distx-1
execute store result score @s deeper_dark.distx-1 run data get entity @s Pos[0]
execute store result score @s deeper_dark.distz-1 run data get entity @s Pos[2]
scoreboard players operation @s deeper_dark.distx-1 -= @s deeper_dark.distx+1
scoreboard players operation @s deeper_dark.distz-1 -= @s deeper_dark.distz+1
execute store result entity @s Pos[0] double 1 run scoreboard players get @s deeper_dark.distx-1
execute store result entity @s Pos[2] double 1 run scoreboard players get @s deeper_dark.distz-1
execute at @s run tp @s ~1.5 ~ ~1.5
scoreboard players reset @s
#execute as @s at @s run particle flame
execute at @s run function deeper_dark:locator/ancient_fortress/locate