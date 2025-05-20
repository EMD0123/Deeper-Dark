execute positioned ~ ~1.1 ~ as @n[type=minecraft:text_display,tag=deeper_dark.syphon_jaw_main,distance=0...1] at @s run rotate @s facing entity @n[tag=deeper_dark.syphon_target] eyes

execute positioned ~ ~1.1 ~ run data modify entity @s data.target.x set from entity @n[type=minecraft:text_display,tag=deeper_dark.syphon_jaw_main,distance=0...1] Pos[0]
execute positioned ~ ~1.1 ~ run data modify entity @s data.target.y set from entity @n[type=minecraft:text_display,tag=deeper_dark.syphon_jaw_main,distance=0...1] Pos[1]
execute positioned ~ ~1.1 ~ run data modify entity @s data.target.z set from entity @n[type=minecraft:text_display,tag=deeper_dark.syphon_jaw_main,distance=0...1] Pos[2]
execute at @n[tag=deeper_dark.syphon_target] run function deeper_dark:syphon/particle with entity @s data.target

execute store result score @s deeper_dark.var run data get entity @n[tag=deeper_dark.syphon_target] HurtTime
execute unless score @s deeper_dark.var matches 6..9 run damage @n[tag=deeper_dark.syphon_target] 1 deeper_dark:soul_syphon

playsound minecraft:entity.vex.death block @a ~ ~ ~ .5 2
execute positioned ~ ~1.1 ~ as @n[type=minecraft:text_display,tag=deeper_dark.syphon_jaw_main,distance=0...1] at @s as @e[type=minecraft:text_display,tag=deeper_dark.syphon_jaw,distance=0...1] run rotate @s ~ ~
execute positioned ~ ~1.1 ~ as @n[type=minecraft:text_display,tag=deeper_dark.syphon_jaw_main,distance=0...1] at @s as @e[type=minecraft:text_display,tag=deeper_dark.syphon_jaw_back,distance=0...1] run rotate @s facing ^ ^ ^-1