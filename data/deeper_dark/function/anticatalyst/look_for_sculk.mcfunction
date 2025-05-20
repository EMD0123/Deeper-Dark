scoreboard players add 2 deeper_dark.var 1
execute as @e[tag=deeper_dark.anticatalyst_target] at @s unless block ~ ~ ~ #deeper_dark:sculk run tag @s add deeper_dark.silent_despawn
execute if score 2 deeper_dark.var matches 10.. run function deeper_dark:random_direction

#execute at @n[tag=deeper_dark.anticatalyst_target,tag=!deeper_dark.silent_despawn,distance=0..126] run particle minecraft:block_marker{block_state:lava} ~ ~ ~
execute at @s run rotate @s facing entity @n[tag=deeper_dark.anticatalyst_target,tag=!deeper_dark.silent_despawn,distance=0..126] eyes
tag @n[tag=deeper_dark.anticatalyst_target,tag=!deeper_dark.silent_despawn,distance=0..126] add deeper_dark.silent_despawn
execute if score 2 deeper_dark.var matches 1 run rotate @s facing entity @n[predicate=deeper_dark:sculk_entity,distance=0..126] eyes
scoreboard players set @s deeper_dark.var 0
tp @e[tag=deeper_dark.anticatalyst_particle] ~ -1000 ~
#say fire
#tellraw @p {"score":{"name":"2","objective":"deeper_dark.var"}}
execute unless score 2 deeper_dark.var matches 21.. at @s positioned ^ ^ ^1.6 run function deeper_dark:anticatalyst/look_for_sculk2
execute unless score 2 deeper_dark.var matches 21.. at @s positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["deeper_dark.anticatalyst_particle","deeper_dark.silent_despawn"]}