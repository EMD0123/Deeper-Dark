data merge entity @s[tag=!deeper_dark.sculk_claw.closed] {start_interpolation:-1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-1.25f,-0.35f],scale:[0.7f,2f,0.7f]}}
execute at @s[tag=!deeper_dark.sculk_claw.closed] unless predicate deeper_dark:water run playsound minecraft:entity.warden.attack_impact block @a ~ ~ ~ 1 0
execute at @s positioned ~-0.5 ~ ~-0.5 run tag @n[dx=0,dy=0,dz=0,predicate=deeper_dark:living,type=!minecraft:warden] add deeper_dark.grabbed
damage @n[tag=deeper_dark.grabbed,distance=0..3] 1 minecraft:mob_attack by @s[tag=!deeper_dark.sculk_claw.closed]
tag @s add deeper_dark.sculk_claw.closed
execute positioned as @s run rotate @s facing entity @n[tag=deeper_dark.grabbed,distance=0..3] eyes
execute at @s if entity @s[tag=deeper_dark.sculk_claw.closed] run rotate @s ~ ~90
#grab
execute at @s if entity @n[tag=deeper_dark.grabbed,distance=0.00001..3,type=player] at @s rotated as @n[tag=deeper_dark.grabbed,distance=0..3] run function deeper_dark:claw/grab
tp @n[tag=deeper_dark.grabbed,distance=0..3,type=!player] ~ ~ ~

#end
execute at @s unless entity @n[tag=deeper_dark.grabbed] run function deeper_dark:claw/open
tag @e[tag=deeper_dark.grabbed] remove deeper_dark.grabbed