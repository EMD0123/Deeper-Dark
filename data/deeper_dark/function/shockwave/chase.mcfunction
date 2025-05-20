summon marker ^1 ^ ^ {Tags:["deeper_dark.shockwave.chase_l","deeper_dark.shockwave.chase"]}
summon marker ^-1 ^ ^ {Tags:["deeper_dark.shockwave.chase_r","deeper_dark.shockwave.chase"]}
execute at @p run tag @n[tag=deeper_dark.shockwave.chase] add deeper_dark.shockwave.chase_selected
execute if entity @n[tag=deeper_dark.shockwave.chase_selected,tag=deeper_dark.shockwave.chase_l] run scoreboard players set @s deeper_dark.shockwave.turn_rng 0
execute if entity @n[tag=deeper_dark.shockwave.chase_selected,tag=deeper_dark.shockwave.chase_r] run scoreboard players set @s deeper_dark.shockwave.turn_rng 1
tag @e[tag=deeper_dark.shockwave.chase] add deeper_dark.silent_despawn