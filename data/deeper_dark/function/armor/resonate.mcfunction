scoreboard objectives add deeper_dark.var dummy
tag @s add deeper_dark.selected
scoreboard players set @s deeper_dark.var 0
execute on attacker if entity @s run scoreboard players set @e[tag=deeper_dark.selected,limit=1] deeper_dark.var 1
execute if entity @s[scores={deeper_dark.var=1}] run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 2 0
particle minecraft:flash
tag @e remove deeper_dark.selected