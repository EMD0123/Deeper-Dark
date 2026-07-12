#/execute as @s run function deeper_dark:playerdata/remove_playerdata {field:"test"}
execute unless entity @s[type=minecraft:player] run return fail
function deeper_dark:playerdata/initialize_player_id
$data modify storage deeper_dark:data remove_playerdata.field set value $(field)
execute store result storage deeper_dark:data remove_playerdata.id int 1 run scoreboard players get @s deeper_dark.playerdata
function deeper_dark:playerdata/remove_playerdata2 with storage deeper_dark:data remove_playerdata