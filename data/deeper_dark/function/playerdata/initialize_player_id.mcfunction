#player data storage
scoreboard objectives add deeper_dark.playerdata dummy
execute unless data storage deeper_dark:data players[0] run data modify storage deeper_dark:data players append value {}
scoreboard players add @s deeper_dark.playerdata 0
execute unless entity @s[scores={deeper_dark.playerdata=0}] run return fail
scoreboard players add n deeper_dark.playerdata 0
execute if entity @s run scoreboard players add n deeper_dark.playerdata 1
execute if entity @s run data modify storage deeper_dark:data players append value {}
execute as @s run scoreboard players operation @s deeper_dark.playerdata = n deeper_dark.playerdata