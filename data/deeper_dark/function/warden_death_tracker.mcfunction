summon minecraft:arrow ~ ~1000 ~ {Tags:["deeper_dark.selected","deeper_dark.warden_death_tracker"]}
data modify entity @e[tag=deeper_dark.selected,limit=1,sort=nearest] Owner set from entity @s UUID
tag @e[tag=deeper_dark.selected] remove deeper_dark.selected