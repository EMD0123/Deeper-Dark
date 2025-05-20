execute positioned ~1 ~ ~ store result score Game deeper_dark.distx+1 run locate structure deeper_dark:amethyst_mineshaft
execute positioned ~-1 ~ ~ store result score Game deeper_dark.distx-1 run locate structure deeper_dark:amethyst_mineshaft
execute positioned ~ ~ ~1 store result score Game deeper_dark.distz+1 run locate structure deeper_dark:amethyst_mineshaft
execute positioned ~ ~ ~-1 store result score Game deeper_dark.distz-1 run locate structure deeper_dark:amethyst_mineshaft
scoreboard players operation Game deeper_dark.distx-1 -= Game deeper_dark.distx+1
scoreboard players operation Game deeper_dark.distz-1 -= Game deeper_dark.distz+1
execute unless score Game deeper_dark.distx+1 matches 2 if score Game deeper_dark.distx-1 matches 1..3 at @s run tp @s ~16 ~ ~
execute unless score Game deeper_dark.distx+1 matches 2 if score Game deeper_dark.distx-1 matches -3..-1 at @s run tp @s ~-16 ~ ~ 
execute unless score Game deeper_dark.distz+1 matches 2 if score Game deeper_dark.distz-1 matches 1..3 at @s run tp @s ~ ~ ~16
execute unless score Game deeper_dark.distz+1 matches 2 if score Game deeper_dark.distz-1 matches -3..-1 at @s run tp @s ~ ~ ~-16

#particle lava
#particle minecraft:block_marker{block_state:"minecraft:glowstone"} ~ ~ ~ 0 0 0 1 1 force
execute if score Game deeper_dark.distx+1 matches 2 if score Game deeper_dark.distz+1 matches 2 run return run function deeper_dark:locator/end
execute if score Game deeper_dark.distx+1 matches 0 if score Game deeper_dark.distz+1 matches 0 run return fail 
execute as @s positioned as @s run function deeper_dark:locator/amethyst_mineshaft/locate