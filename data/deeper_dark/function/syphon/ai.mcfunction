execute positioned ~ ~1.1 ~ as @e[type=minecraft:text_display,tag=deeper_dark.syphon_jaw,distance=0...1] at @s run rotate @s ~3 0

execute store success score detect deeper_dark.var run tag @n[distance=0..8,type=!block_display,type=!text_display,predicate=deeper_dark:touching_sculk,type=!marker,predicate=deeper_dark:living,predicate=!deeper_dark:sculk_entity] add deeper_dark.syphon_target
execute if score detect deeper_dark.var matches 1 run function deeper_dark:syphon/attack
execute if score detect deeper_dark.var matches 1 run tag @e[tag=deeper_dark.syphon_target] remove deeper_dark.syphon_target

execute unless block ~ ~ ~ minecraft:sculk_catalyst run function deeper_dark:syphon/break 


#cursors
execute at @s if data block ~ ~ ~ cursors[0] unless entity @n[tag=deeper_dark.sculk_converter,distance=0..1] run summon marker ~ ~ ~ {Tags:["deeper_dark.cursor_tracker"]}