$loot spawn ~ ~-1000 ~ loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:loot_table","value":"deeper_dark:items/locator_laboratory","functions":[{"function":"minecraft:set_components","components":{"minecraft:lodestone_tracker":{"target":{"dimension":"deeper_dark:deeper_dark","pos":[$(x),$(y),$(z)]},"tracked":false}}},{"function":"minecraft:set_components","components":{"minecraft:custom_data":{"deeper_dark_located": 1}}}]}]}]}
advancement grant @s only deeper_dark:laboratory_compass
execute positioned ~ ~-1000 ~ run data modify entity @e[limit=1,sort=nearest,type=item] PickupDelay set value 0
execute positioned ~ ~-1000 ~ run tp @e[limit=1,sort=nearest,type=item] @s
$clear @s minecraft:compass[custom_data={deeper_dark_located:0b,deeper_dark_locator: "$(type)"}] 1