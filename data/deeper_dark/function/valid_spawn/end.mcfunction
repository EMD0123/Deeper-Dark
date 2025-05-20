tp @s ~-1 ~ ~-1
data modify storage deeper_dark:data lastfoundstructure set from entity @s Pos
execute store result storage deeper_dark:data lastfoundstructure2.x int 1 run data get storage deeper_dark:data lastfoundstructure[0] 1
data modify storage deeper_dark:data lastfoundstructure2.y set value 0
execute store result storage deeper_dark:data lastfoundstructure2.z int 1 run data get storage deeper_dark:data lastfoundstructure[2] 1
kill @s