scoreboard players add @s deeper_dark.var 1
summon marker ~ ~ ~ {Tags:["deeper_dark.anticatalyst_particle","deeper_dark.silent_despawn"]}
#execute if score @s deeper_dark.var matches 127.. at @s run tellraw @p {"score":{"name":"@s","objective":"deeper_dark.var"}}
execute if score @s deeper_dark.var matches 127.. at @s run return run function deeper_dark:anticatalyst/look_for_sculk
execute align xyz positioned ~-.5 ~-.5 ~-.5 if entity @e[predicate=deeper_dark:sculk_entity,dx=0,dy=0,dz=0] positioned ~.5 ~.5 ~.5 run return run function deeper_dark:anticatalyst/damage_entity
execute align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #deeper_dark:sculk run return run function deeper_dark:anticatalyst/clear_sculk
execute unless block ~ ~ ~ #minecraft:replaceable run return run function deeper_dark:anticatalyst/look_for_sculk
execute unless score @s deeper_dark.var matches 127.. positioned ^ ^ ^0.5 run function deeper_dark:anticatalyst/look_for_sculk2
