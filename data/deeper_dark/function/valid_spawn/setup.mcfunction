kill @e[tag=deeper_dark.locator]
#start locating
execute in deeper_dark:deeper_dark summon minecraft:marker at @s run function deeper_dark:valid_spawn/align_to_chunk

#end
kill @e[tag=deeper_dark.locator]
execute store success score Game deeper_dark.var in deeper_dark:deeper_dark run locate structure deeper_dark:valid_spawn
return run scoreboard players get Game deeper_dark.var
