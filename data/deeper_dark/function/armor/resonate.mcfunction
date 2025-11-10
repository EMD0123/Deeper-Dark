scoreboard objectives add deeper_dark.var dummy
tag @s add deeper_dark.selected
scoreboard players set @s deeper_dark.var 0
execute on attacker if entity @s run scoreboard players set @e[tag=deeper_dark.selected,limit=1] deeper_dark.var 1
execute if entity @s[scores={deeper_dark.var=1}] run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 2 0
particle flash{color:[0.522,0.396,0.757,1.00]}
tag @e remove deeper_dark.selected