summon minecraft:text_display ~ ~ ~ {alignment:"left",width:1f,height:1f,text_opacity:64,Tags:["deeper_dark.portal_display"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-1.0975f,-0.5f],scale:[7.996f,7.98f,1f]},text:'{"text":"■","color":"aqua"}',background:0}
summon minecraft:text_display ~ ~ ~ {alignment:"left",width:1f,height:1f,text_opacity:64,Tags:["deeper_dark.portal_display"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1f,-1.0975f,0.5f],scale:[-7.996f,7.98f,1f]},text:'{"text":"■","color":"aqua"}',background:0}
execute as @e[tag=deeper_dark.portal_display,distance=0..1,limit=2,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute if block ~ ~ ~ #deeper_dark:structure_support_noclip run setblock ~ ~ ~ minecraft:light destroy
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 1 0 force
particle minecraft:sculk_soul ~ ~ ~ 0 0 0 1 10 force