#/execute as @s run function deeper_dark:playerdata/set_playerdata {field:"test",value:0}
execute unless entity @s[type=minecraft:player] run return fail
function deeper_dark:playerdata/initialize_player_id
$data modify storage deeper_dark:data to_playerdata.value set value "$(value)"
$data modify storage deeper_dark:data to_playerdata.field set value $(field)
execute store result storage deeper_dark:data to_playerdata.id int 1 run scoreboard players get @s deeper_dark.playerdata
function deeper_dark:playerdata/set_playerdata2 with storage deeper_dark:data to_playerdata