#/execute as @s run function deeper_dark:playerdata/get_playerdata {field:"test"}
# output is stored in get_playerdata
execute unless entity @s[type=minecraft:player] run return fail
function deeper_dark:playerdata/initialize_player_id
data remove storage deeper_dark:data get_playerdata
$data modify storage deeper_dark:data get_playerdata.field set value $(field)
execute store result storage deeper_dark:data get_playerdata.id int 1 run scoreboard players get @s deeper_dark.playerdata
function deeper_dark:playerdata/get_playerdata2 with storage deeper_dark:data get_playerdata