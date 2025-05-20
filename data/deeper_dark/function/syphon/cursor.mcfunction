execute unless data entity @s data.cursors[0] run return run tag @s add deeper_dark.silent_despawn
execute store result entity @s Pos[0] double 1 run data get entity @s data.cursors[0].pos[0]
execute store result entity @s Pos[1] double 1 run data get entity @s data.cursors[0].pos[1]
execute store result entity @s Pos[2] double 1 run data get entity @s data.cursors[0].pos[2]
execute at @s run tp @s ~.5 ~.5 ~.5
execute at @s if block ~ ~ ~ minecraft:sculk positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air run function deeper_dark:syphon/place
execute at @s if block ~ ~ ~ minecraft:sculk_vein[down=true] run function deeper_dark:syphon/place
#execute at @s run particle flame
data remove entity @s data.cursors[0]
function deeper_dark:syphon/cursor