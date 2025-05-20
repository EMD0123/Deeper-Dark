scoreboard players add @s deeper_dark.var 1
execute align xyz positioned ~.5 ~.5 ~.5 if predicate deeper_dark:nearby_shrieker run function deeper_dark:armor/shrieker_sense_locate
effect give @e[type=minecraft:warden,dx=1,dy=1,dz=1] minecraft:glowing 240 0
#particle dust{color:[0.300,1.000,1.000],scale:1} ^ ^-0.5 ^ 0 0 0 1 0 normal
execute if score @s deeper_dark.var <= Game deeper_dark.gamerule.shrieker_sense_scan_limit positioned ^ ^ ^1 run function deeper_dark:armor/shrieker_sense