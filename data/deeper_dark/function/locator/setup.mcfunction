advancement revoke @s only deeper_dark:functions/locator_get
#set locator
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{"deeper_dark_locator":"amethyst_mineshaft"}}}]} run data modify storage deeper_dark:data findstructure set value amethyst_mineshaft
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{"deeper_dark_locator":"ancient_fortress"}}}]} run data modify storage deeper_dark:data findstructure set value ancient_fortress
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{"deeper_dark_locator":"laboratory"}}}]} run data modify storage deeper_dark:data findstructure set value laboratory
kill @e[tag=deeper_dark.locator]
summon minecraft:marker ~ 0 ~ {Tags:["deeper_dark.locator"]}
#start locating
execute if data storage deeper_dark:data {findstructure:amethyst_mineshaft} as @e[tag=deeper_dark.locator] at @s run function deeper_dark:locator/amethyst_mineshaft/align_to_chunk
execute if data storage deeper_dark:data {findstructure:ancient_fortress} as @e[tag=deeper_dark.locator] at @s run function deeper_dark:locator/ancient_fortress/align_to_chunk
execute if data storage deeper_dark:data {findstructure:laboratory} as @e[tag=deeper_dark.locator] at @s run function deeper_dark:locator/laboratory/align_to_chunk

#give
execute if data storage deeper_dark:data {findstructure:amethyst_mineshaft} at @s run function deeper_dark:locator/amethyst_mineshaft/give with storage deeper_dark:data lastfoundstructure2
execute if data storage deeper_dark:data {findstructure:ancient_fortress} at @s run function deeper_dark:locator/ancient_fortress/give with storage deeper_dark:data lastfoundstructure2
execute if data storage deeper_dark:data {findstructure:laboratory} at @s run function deeper_dark:locator/laboratory/give with storage deeper_dark:data lastfoundstructure2

kill @e[tag=deeper_dark.locator]
advancement grant @s only deeper_dark:underground_map