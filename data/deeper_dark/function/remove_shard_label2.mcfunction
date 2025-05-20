item replace entity @n[tag=deeper_dark.item] weapon.mainhand from entity @s weapon.mainhand
$data remove entity @n[tag=deeper_dark.item] HandItems[0].components."minecraft:lore"[$(shardlines)]
item replace entity @s weapon.mainhand from entity @n[tag=deeper_dark.item] weapon.mainhand
kill @e[tag=deeper_dark.item]