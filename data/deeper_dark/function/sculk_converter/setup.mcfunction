scoreboard objectives add deeper_dark.var dummy
scoreboard objectives add deeper_dark.sculk_converter.fragments dummy
scoreboard objectives add deeper_dark.sculk_converter.flames dummy
scoreboard objectives add deeper_dark.sculk_converter.xp dummy
scoreboard objectives add deeper_dark.sculk_converter.flame_cost dummy
scoreboard objectives add deeper_dark.sculk_converter.xp_cost dummy
scoreboard objectives add deeper_dark.sculk_converter.conversion_time dummy

execute unless entity @e[tag=deeper_dark.sculk_converter,distance=0...1] unless function deeper_dark:has_origin run return fail
execute unless entity @e[tag=deeper_dark.sculk_converter,distance=0...1] on origin unless entity @s[distance=0..] run return fail
execute unless entity @e[tag=deeper_dark.sculk_converter,distance=0...1] run function deeper_dark:sculk_converter/texture
execute unless entity @e[tag=deeper_dark.sculk_converter,distance=0...1] run summon minecraft:text_display ~ ~1.5 ~ {billboard:"center",Tags:["deeper_dark.sculk_converter_xp"],brightness:{sky:15,block:15},text:'{"text":"","color":"aqua"}',background:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,1f]}}
execute unless entity @e[tag=deeper_dark.sculk_converter,distance=0...1] run summon minecraft:interaction ~ ~2.6 ~ {width:0.8f,height:0.8f,Tags:["deeper_dark.sculk_converter_hitbox"]}
execute unless entity @e[tag=deeper_dark.sculk_converter,distance=0...1] run summon minecraft:text_display ~ ~3 ~ {billboard:"center",Tags:["deeper_dark.sculk_converter_slot"],brightness:{sky:15,block:15},text:'{"text":"◌","color":"aqua"}',background:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.3f,-1.9f,0f],scale:[16f,16f,0f]}}
execute unless entity @e[tag=deeper_dark.sculk_converter,distance=0...1] run summon minecraft:item_display ~ ~3 ~ {item_display:"fixed",width:1f,height:1f,billboard:"vertical",Tags:["deeper_dark.sculk_converter_item"],brightness:{sky:15,block:15},item:{}}
execute on origin run advancement grant @s only deeper_dark:converter
execute if entity @n[type=minecraft:marker,tag=deeper_dark.syphon,distance=0..1] at @s run tag @e[type=minecraft:text_display,tag=deeper_dark.syphon_base,distance=0..1] add deeper_dark.silent_despawn
execute if entity @n[type=minecraft:marker,tag=deeper_dark.syphon,distance=0..1] on origin run advancement grant @s only deeper_dark:hybridization
execute unless entity @e[tag=deeper_dark.sculk_converter,distance=0...1] run summon minecraft:text_display ~ ~1 ~ {billboard:"center",Tags:["deeper_dark.sculk_converter_fragments"],brightness:{sky:15,block:15},text:'{"text":"","color":"aqua"}',background:0}
execute unless entity @e[tag=deeper_dark.sculk_converter,distance=0...1] run playsound minecraft:block.respawn_anchor.set_spawn block @a ~ ~ ~ 1 2
execute unless entity @e[tag=deeper_dark.sculk_converter,distance=0...1] run particle minecraft:sculk_soul ~ ~.75 ~ 0.2 0 0.2 0 10
execute unless entity @e[tag=deeper_dark.sculk_converter,distance=0...1] run summon minecraft:marker ~ ~ ~ {Tags:["deeper_dark.sculk_converter"]}
execute if entity @e[tag=deeper_dark.sculk_converter,distance=0...1] unless data entity @n[tag=deeper_dark.sculk_converter] data.dimension on origin run data modify entity @n[tag=deeper_dark.sculk_converter] data.dimension set from entity @s Dimension
execute if entity @e[tag=deeper_dark.sculk_converter,distance=0...1] unless score @e[tag=deeper_dark.sculk_converter,distance=0...1,limit=1,sort=nearest] deeper_dark.sculk_converter.fragments matches 8.. run function deeper_dark:sculk_converter/add_fragment
