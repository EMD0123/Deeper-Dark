tag @s remove deeper_dark.sculk_claw.closed
execute at @s run rotate @s -90 0
data merge entity @s {start_interpolation:-1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.45f,-1f,-0.45f],scale:[0.9f,1.5f,0.9f]}}