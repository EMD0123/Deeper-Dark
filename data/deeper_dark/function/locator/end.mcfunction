tp @s ~-1 ~ ~-1
data modify storage deeper_dark:data lastfoundstructure set from entity @s Pos
execute store result storage deeper_dark:data lastfoundstructure2.x int 1 run data get storage deeper_dark:data lastfoundstructure[0] 1
execute store result storage deeper_dark:data lastfoundstructure2.y int 1 run data get storage deeper_dark:data lastfoundstructure[1] 1
execute store result storage deeper_dark:data lastfoundstructure2.z int 1 run data get storage deeper_dark:data lastfoundstructure[2] 1
data modify storage deeper_dark:data lastfoundstructure2.type set from storage deeper_dark:data findstructure
kill @s
#clear @p[tag=deeper_dark.locator.selected] minecraft:compass[custom_data={deeper_dark_located:0b}] 1
#loot give @p[tag=deeper_dark.locator.selected] loot deeper_dark:amethyst_mineshaft/locator