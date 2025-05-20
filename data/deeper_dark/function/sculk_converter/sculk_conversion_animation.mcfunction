scoreboard players remove @s deeper_dark.sculk_converter.conversion_time 1
playsound minecraft:entity.warden.listening_angry block @a ~ ~ ~ 2 1.5
#playsound minecraft:block.sculk.spread block @a ~ ~ ~ 2 2
#particle minecraft:sculk_charge_pop ~1 ~.3 ~ .1 .1 .1 0 25 force
execute positioned ~3 ~ ~ if predicate deeper_dark:soul_flame run particle minecraft:soul_fire_flame ~ ~ ~ -1 0.13 0 0.15 0 normal
#execute positioned ~3 ~ ~ if predicate deeper_dark:soul_flame run particle minecraft:soul_fire_flame ~ ~ ~ .2 .2 .2 .1 1 normal
execute positioned ~3 ~ ~ if predicate deeper_dark:soul_flame facing ~-3 ~3 ~ run particle minecraft:soul ^ ^ ^0.25 0 0 0 0 1 normal
execute positioned ~3 ~ ~ if predicate deeper_dark:soul_flame facing ~-3 ~3 ~ run particle minecraft:soul ^ ^ ^0.5 0 0 0 0 1 normal
execute positioned ~3 ~ ~ if predicate deeper_dark:soul_flame facing ~-3 ~3 ~ run particle minecraft:soul ^ ^ ^0.75 0 0 0 0 1 normal
execute positioned ~3 ~ ~ if predicate deeper_dark:soul_flame facing ~-3 ~3 ~ run particle minecraft:soul ^ ^ ^1 0 0 0 0 1 normal
execute positioned ~3 ~ ~ if predicate deeper_dark:soul_flame facing ~-3 ~3 ~ run particle minecraft:soul ^ ^ ^1.25 0 0 0 0 1 normal
execute positioned ~3 ~ ~ if predicate deeper_dark:soul_flame facing ~-3 ~3 ~ run particle minecraft:soul ^ ^ ^1.5 0 0 0 0 1 normal
execute positioned ~3 ~ ~ if predicate deeper_dark:soul_flame facing ~-3 ~3 ~ run particle minecraft:soul ^ ^ ^1.75 0 0 0 0 1 normal
execute positioned ~3 ~ ~ if predicate deeper_dark:soul_flame facing ~-3 ~3 ~ run particle minecraft:soul ^ ^ ^2 0 0 0 0 1 normal
execute positioned ~3 ~ ~ if predicate deeper_dark:soul_flame facing ~-3 ~3 ~ run particle minecraft:soul ^ ^ ^2.25 0 0 0 0 1 normal
execute positioned ~3 ~ ~ if predicate deeper_dark:soul_flame facing ~-3 ~3 ~ run particle minecraft:soul ^ ^ ^2.5 0 0 0 0 1 normal
execute positioned ~3 ~ ~ if predicate deeper_dark:soul_flame facing ~-3 ~3 ~ run particle minecraft:soul ^ ^ ^2.75 0 0 0 0 1 normal
execute positioned ~3 ~ ~ if predicate deeper_dark:soul_flame facing ~-3 ~3 ~ run particle minecraft:soul ^ ^ ^3 0 0 0 0 1 normal
execute positioned ~3 ~ ~ if predicate deeper_dark:soul_flame facing ~-3 ~3 ~ run particle minecraft:soul ^ ^ ^3.25 0 0 0 0 1 normal
execute positioned ~3 ~ ~ if predicate deeper_dark:soul_flame facing ~-3 ~3 ~ run particle minecraft:soul ^ ^ ^3.5 0 0 0 0 1 normal

execute positioned ~-3 ~ ~ if predicate deeper_dark:soul_flame run particle minecraft:soul_fire_flame ~ ~ ~ 1 0.13 0 0.15 0 normal
#execute positioned ~-3 ~ ~ if predicate deeper_dark:soul_flame run particle minecraft:soul_fire_flame ~ ~ ~ .2 .2 .2 .1 1 normal
execute positioned ~-3 ~ ~ if predicate deeper_dark:soul_flame facing ~3 ~3 ~ run particle minecraft:soul ^ ^ ^0.25 0 0 0 0 1 normal
execute positioned ~-3 ~ ~ if predicate deeper_dark:soul_flame facing ~3 ~3 ~ run particle minecraft:soul ^ ^ ^0.5 0 0 0 0 1 normal
execute positioned ~-3 ~ ~ if predicate deeper_dark:soul_flame facing ~3 ~3 ~ run particle minecraft:soul ^ ^ ^0.75 0 0 0 0 1 normal
execute positioned ~-3 ~ ~ if predicate deeper_dark:soul_flame facing ~3 ~3 ~ run particle minecraft:soul ^ ^ ^1 0 0 0 0 1 normal
execute positioned ~-3 ~ ~ if predicate deeper_dark:soul_flame facing ~3 ~3 ~ run particle minecraft:soul ^ ^ ^1.25 0 0 0 0 1 normal
execute positioned ~-3 ~ ~ if predicate deeper_dark:soul_flame facing ~3 ~3 ~ run particle minecraft:soul ^ ^ ^1.5 0 0 0 0 1 normal
execute positioned ~-3 ~ ~ if predicate deeper_dark:soul_flame facing ~3 ~3 ~ run particle minecraft:soul ^ ^ ^1.75 0 0 0 0 1 normal
execute positioned ~-3 ~ ~ if predicate deeper_dark:soul_flame facing ~3 ~3 ~ run particle minecraft:soul ^ ^ ^2 0 0 0 0 1 normal
execute positioned ~-3 ~ ~ if predicate deeper_dark:soul_flame facing ~3 ~3 ~ run particle minecraft:soul ^ ^ ^2.25 0 0 0 0 1 normal
execute positioned ~-3 ~ ~ if predicate deeper_dark:soul_flame facing ~3 ~3 ~ run particle minecraft:soul ^ ^ ^2.5 0 0 0 0 1 normal
execute positioned ~-3 ~ ~ if predicate deeper_dark:soul_flame facing ~3 ~3 ~ run particle minecraft:soul ^ ^ ^2.75 0 0 0 0 1 normal
execute positioned ~-3 ~ ~ if predicate deeper_dark:soul_flame facing ~3 ~3 ~ run particle minecraft:soul ^ ^ ^3 0 0 0 0 1 normal
execute positioned ~-3 ~ ~ if predicate deeper_dark:soul_flame facing ~3 ~3 ~ run particle minecraft:soul ^ ^ ^3.25 0 0 0 0 1 normal
execute positioned ~-3 ~ ~ if predicate deeper_dark:soul_flame facing ~3 ~3 ~ run particle minecraft:soul ^ ^ ^3.5 0 0 0 0 1 normal


execute positioned ~ ~ ~3 if predicate deeper_dark:soul_flame run particle minecraft:soul_fire_flame ~ ~ ~ 0 0.13 -1 0.15 0 normal
#execute positioned ~ ~ ~3 if predicate deeper_dark:soul_flame run particle minecraft:soul_fire_flame ~ ~ ~ .2 .2 .2 .1 1 normal
execute positioned ~ ~ ~3 if predicate deeper_dark:soul_flame facing ~ ~3 ~-3 run particle minecraft:soul ^ ^ ^0.25 0 0 0 0 1 normal
execute positioned ~ ~ ~3 if predicate deeper_dark:soul_flame facing ~ ~3 ~-3 run particle minecraft:soul ^ ^ ^0.5 0 0 0 0 1 normal
execute positioned ~ ~ ~3 if predicate deeper_dark:soul_flame facing ~ ~3 ~-3 run particle minecraft:soul ^ ^ ^0.75 0 0 0 0 1 normal
execute positioned ~ ~ ~3 if predicate deeper_dark:soul_flame facing ~ ~3 ~-3 run particle minecraft:soul ^ ^ ^1 0 0 0 0 1 normal
execute positioned ~ ~ ~3 if predicate deeper_dark:soul_flame facing ~ ~3 ~-3 run particle minecraft:soul ^ ^ ^1.25 0 0 0 0 1 normal
execute positioned ~ ~ ~3 if predicate deeper_dark:soul_flame facing ~ ~3 ~-3 run particle minecraft:soul ^ ^ ^1.5 0 0 0 0 1 normal
execute positioned ~ ~ ~3 if predicate deeper_dark:soul_flame facing ~ ~3 ~-3 run particle minecraft:soul ^ ^ ^1.75 0 0 0 0 1 normal
execute positioned ~ ~ ~3 if predicate deeper_dark:soul_flame facing ~ ~3 ~-3 run particle minecraft:soul ^ ^ ^2 0 0 0 0 1 normal
execute positioned ~ ~ ~3 if predicate deeper_dark:soul_flame facing ~ ~3 ~-3 run particle minecraft:soul ^ ^ ^2.25 0 0 0 0 1 normal
execute positioned ~ ~ ~3 if predicate deeper_dark:soul_flame facing ~ ~3 ~-3 run particle minecraft:soul ^ ^ ^2.5 0 0 0 0 1 normal
execute positioned ~ ~ ~3 if predicate deeper_dark:soul_flame facing ~ ~3 ~-3 run particle minecraft:soul ^ ^ ^2.75 0 0 0 0 1 normal
execute positioned ~ ~ ~3 if predicate deeper_dark:soul_flame facing ~ ~3 ~-3 run particle minecraft:soul ^ ^ ^3 0 0 0 0 1 normal
execute positioned ~ ~ ~3 if predicate deeper_dark:soul_flame facing ~ ~3 ~-3 run particle minecraft:soul ^ ^ ^3.25 0 0 0 0 1 normal
execute positioned ~ ~ ~3 if predicate deeper_dark:soul_flame facing ~ ~3 ~-3 run particle minecraft:soul ^ ^ ^3.5 0 0 0 0 1 normal


execute positioned ~ ~ ~-3 if predicate deeper_dark:soul_flame run particle minecraft:soul_fire_flame ~ ~ ~ 0 0.13 1 0.15 0 normal
#execute positioned ~ ~ ~-3 if predicate deeper_dark:soul_flame run particle minecraft:soul_fire_flame ~ ~ ~ .2 .2 .2 .1 1 normal
execute positioned ~ ~ ~-3 if predicate deeper_dark:soul_flame facing ~ ~3 ~3 run particle minecraft:soul ^ ^ ^0.25 0 0 0 0 1 normal
execute positioned ~ ~ ~-3 if predicate deeper_dark:soul_flame facing ~ ~3 ~3 run particle minecraft:soul ^ ^ ^0.5 0 0 0 0 1 normal
execute positioned ~ ~ ~-3 if predicate deeper_dark:soul_flame facing ~ ~3 ~3 run particle minecraft:soul ^ ^ ^0.75 0 0 0 0 1 normal
execute positioned ~ ~ ~-3 if predicate deeper_dark:soul_flame facing ~ ~3 ~3 run particle minecraft:soul ^ ^ ^1 0 0 0 0 1 normal
execute positioned ~ ~ ~-3 if predicate deeper_dark:soul_flame facing ~ ~3 ~3 run particle minecraft:soul ^ ^ ^1.25 0 0 0 0 1 normal
execute positioned ~ ~ ~-3 if predicate deeper_dark:soul_flame facing ~ ~3 ~3 run particle minecraft:soul ^ ^ ^1.5 0 0 0 0 1 normal
execute positioned ~ ~ ~-3 if predicate deeper_dark:soul_flame facing ~ ~3 ~3 run particle minecraft:soul ^ ^ ^1.75 0 0 0 0 1 normal
execute positioned ~ ~ ~-3 if predicate deeper_dark:soul_flame facing ~ ~3 ~3 run particle minecraft:soul ^ ^ ^2 0 0 0 0 1 normal
execute positioned ~ ~ ~-3 if predicate deeper_dark:soul_flame facing ~ ~3 ~3 run particle minecraft:soul ^ ^ ^2.25 0 0 0 0 1 normal
execute positioned ~ ~ ~-3 if predicate deeper_dark:soul_flame facing ~ ~3 ~3 run particle minecraft:soul ^ ^ ^2.5 0 0 0 0 1 normal
execute positioned ~ ~ ~-3 if predicate deeper_dark:soul_flame facing ~ ~3 ~3 run particle minecraft:soul ^ ^ ^2.75 0 0 0 0 1 normal
execute positioned ~ ~ ~-3 if predicate deeper_dark:soul_flame facing ~ ~3 ~3 run particle minecraft:soul ^ ^ ^3 0 0 0 0 1 normal
execute positioned ~ ~ ~-3 if predicate deeper_dark:soul_flame facing ~ ~3 ~3 run particle minecraft:soul ^ ^ ^3.25 0 0 0 0 1 normal
execute positioned ~ ~ ~-3 if predicate deeper_dark:soul_flame facing ~ ~3 ~3 run particle minecraft:soul ^ ^ ^3.5 0 0 0 0 1 normal




execute positioned ~2 ~ ~2 if predicate deeper_dark:soul_flame run particle minecraft:soul_fire_flame ~ ~ ~ -0.6 0.13 -0.6 0.15 0 normal
#execute positioned ~2 ~ ~2 if predicate deeper_dark:soul_flame run particle minecraft:soul_fire_flame ~ ~ ~ .2 .2 .2 .1 1 normal
execute positioned ~2 ~ ~2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~-2 run particle minecraft:soul ^ ^ ^0.25 0 0 0 0 1 normal
execute positioned ~2 ~ ~2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~-2 run particle minecraft:soul ^ ^ ^0.5 0 0 0 0 1 normal
execute positioned ~2 ~ ~2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~-2 run particle minecraft:soul ^ ^ ^0.75 0 0 0 0 1 normal
execute positioned ~2 ~ ~2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~-2 run particle minecraft:soul ^ ^ ^1 0 0 0 0 1 normal
execute positioned ~2 ~ ~2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~-2 run particle minecraft:soul ^ ^ ^1.25 0 0 0 0 1 normal
execute positioned ~2 ~ ~2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~-2 run particle minecraft:soul ^ ^ ^1.5 0 0 0 0 1 normal
execute positioned ~2 ~ ~2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~-2 run particle minecraft:soul ^ ^ ^1.75 0 0 0 0 1 normal
execute positioned ~2 ~ ~2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~-2 run particle minecraft:soul ^ ^ ^2 0 0 0 0 1 normal
execute positioned ~2 ~ ~2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~-2 run particle minecraft:soul ^ ^ ^2.25 0 0 0 0 1 normal
execute positioned ~2 ~ ~2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~-2 run particle minecraft:soul ^ ^ ^2.5 0 0 0 0 1 normal
execute positioned ~2 ~ ~2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~-2 run particle minecraft:soul ^ ^ ^2.75 0 0 0 0 1 normal
execute positioned ~2 ~ ~2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~-2 run particle minecraft:soul ^ ^ ^3 0 0 0 0 1 normal
execute positioned ~2 ~ ~2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~-2 run particle minecraft:soul ^ ^ ^3.25 0 0 0 0 1 normal
execute positioned ~2 ~ ~2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~-2 run particle minecraft:soul ^ ^ ^3.5 0 0 0 0 1 normal




execute positioned ~-2 ~ ~2 if predicate deeper_dark:soul_flame run particle minecraft:soul_fire_flame ~ ~ ~ 0.6 0.13 -0.6 0.15 0 normal
#execute positioned ~-2 ~ ~2 if predicate deeper_dark:soul_flame run particle minecraft:soul_fire_flame ~ ~ ~ .2 .2 .2 .1 1 normal
execute positioned ~-2 ~ ~2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~-2 run particle minecraft:soul ^ ^ ^0.25 0 0 0 0 1 normal
execute positioned ~-2 ~ ~2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~-2 run particle minecraft:soul ^ ^ ^0.5 0 0 0 0 1 normal
execute positioned ~-2 ~ ~2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~-2 run particle minecraft:soul ^ ^ ^0.75 0 0 0 0 1 normal
execute positioned ~-2 ~ ~2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~-2 run particle minecraft:soul ^ ^ ^1 0 0 0 0 1 normal
execute positioned ~-2 ~ ~2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~-2 run particle minecraft:soul ^ ^ ^1.25 0 0 0 0 1 normal
execute positioned ~-2 ~ ~2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~-2 run particle minecraft:soul ^ ^ ^1.5 0 0 0 0 1 normal
execute positioned ~-2 ~ ~2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~-2 run particle minecraft:soul ^ ^ ^1.75 0 0 0 0 1 normal
execute positioned ~-2 ~ ~2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~-2 run particle minecraft:soul ^ ^ ^2 0 0 0 0 1 normal
execute positioned ~-2 ~ ~2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~-2 run particle minecraft:soul ^ ^ ^2.25 0 0 0 0 1 normal
execute positioned ~-2 ~ ~2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~-2 run particle minecraft:soul ^ ^ ^2.5 0 0 0 0 1 normal
execute positioned ~-2 ~ ~2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~-2 run particle minecraft:soul ^ ^ ^2.75 0 0 0 0 1 normal
execute positioned ~-2 ~ ~2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~-2 run particle minecraft:soul ^ ^ ^3 0 0 0 0 1 normal
execute positioned ~-2 ~ ~2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~-2 run particle minecraft:soul ^ ^ ^3.25 0 0 0 0 1 normal
execute positioned ~-2 ~ ~2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~-2 run particle minecraft:soul ^ ^ ^3.5 0 0 0 0 1 normal




execute positioned ~-2 ~ ~-2 if predicate deeper_dark:soul_flame run particle minecraft:soul_fire_flame ~ ~ ~ 0.6 0.13 0.6 0.15 0 normal
#execute positioned ~-2 ~ ~-2 if predicate deeper_dark:soul_flame run particle minecraft:soul_fire_flame ~ ~ ~ .2 .2 .2 .1 1 normal
execute positioned ~-2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~2 run particle minecraft:soul ^ ^ ^0.25 0 0 0 0 1 normal
execute positioned ~-2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~2 run particle minecraft:soul ^ ^ ^0.5 0 0 0 0 1 normal
execute positioned ~-2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~2 run particle minecraft:soul ^ ^ ^0.75 0 0 0 0 1 normal
execute positioned ~-2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~2 run particle minecraft:soul ^ ^ ^1 0 0 0 0 1 normal
execute positioned ~-2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~2 run particle minecraft:soul ^ ^ ^1.25 0 0 0 0 1 normal
execute positioned ~-2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~2 run particle minecraft:soul ^ ^ ^1.5 0 0 0 0 1 normal
execute positioned ~-2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~2 run particle minecraft:soul ^ ^ ^1.75 0 0 0 0 1 normal
execute positioned ~-2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~2 run particle minecraft:soul ^ ^ ^2 0 0 0 0 1 normal
execute positioned ~-2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~2 run particle minecraft:soul ^ ^ ^2.25 0 0 0 0 1 normal
execute positioned ~-2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~2 run particle minecraft:soul ^ ^ ^2.5 0 0 0 0 1 normal
execute positioned ~-2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~2 run particle minecraft:soul ^ ^ ^2.75 0 0 0 0 1 normal
execute positioned ~-2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~2 run particle minecraft:soul ^ ^ ^3 0 0 0 0 1 normal
execute positioned ~-2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~2 run particle minecraft:soul ^ ^ ^3.25 0 0 0 0 1 normal
execute positioned ~-2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~2 ~3 ~2 run particle minecraft:soul ^ ^ ^3.5 0 0 0 0 1 normal




execute positioned ~2 ~ ~-2 if predicate deeper_dark:soul_flame run particle minecraft:soul_fire_flame ~ ~ ~ -0.6 0.13 0.6 0.15 0 normal
#execute positioned ~2 ~ ~-2 if predicate deeper_dark:soul_flame run particle minecraft:soul_fire_flame ~ ~ ~ .2 .2 .2 .1 1 normal
execute positioned ~2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~2 run particle minecraft:soul ^ ^ ^0.25 0 0 0 0 1 normal
execute positioned ~2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~2 run particle minecraft:soul ^ ^ ^0.5 0 0 0 0 1 normal
execute positioned ~2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~2 run particle minecraft:soul ^ ^ ^0.75 0 0 0 0 1 normal
execute positioned ~2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~2 run particle minecraft:soul ^ ^ ^1 0 0 0 0 1 normal
execute positioned ~2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~2 run particle minecraft:soul ^ ^ ^1.25 0 0 0 0 1 normal
execute positioned ~2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~2 run particle minecraft:soul ^ ^ ^1.5 0 0 0 0 1 normal
execute positioned ~2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~2 run particle minecraft:soul ^ ^ ^1.75 0 0 0 0 1 normal
execute positioned ~2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~2 run particle minecraft:soul ^ ^ ^2 0 0 0 0 1 normal
execute positioned ~2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~2 run particle minecraft:soul ^ ^ ^2.25 0 0 0 0 1 normal
execute positioned ~2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~2 run particle minecraft:soul ^ ^ ^2.5 0 0 0 0 1 normal
execute positioned ~2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~2 run particle minecraft:soul ^ ^ ^2.75 0 0 0 0 1 normal
execute positioned ~2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~2 run particle minecraft:soul ^ ^ ^3 0 0 0 0 1 normal
execute positioned ~2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~2 run particle minecraft:soul ^ ^ ^3.25 0 0 0 0 1 normal
execute positioned ~2 ~ ~-2 if predicate deeper_dark:soul_flame facing ~-2 ~3 ~2 run particle minecraft:soul ^ ^ ^3.5 0 0 0 0 1 normal


particle minecraft:soul_fire_flame ~ ~ ~ 0 1 0 0.5 0 force