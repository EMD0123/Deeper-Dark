execute if entity @s[tag=deeper_dark.tp_cooldown] run return fail
data modify storage deeper_dark:data PortalDestination set from entity @n[tag=deeper_dark.portal_marker,distance=0..20] data.location
data modify storage deeper_dark:data PortalLocation.dim set from entity @n[tag=deeper_dark.portal_marker,distance=0..20] data.location.dim
data modify storage deeper_dark:data PortalLocation.x set from entity @s Pos[0]
data modify storage deeper_dark:data PortalLocation.y set from entity @s Pos[1]
data modify storage deeper_dark:data PortalLocation.z set from entity @s Pos[2]
execute store success score Game deeper_dark.var unless predicate deeper_dark:in_deeper_dark
function deeper_dark:portal/teleport with storage deeper_dark:data PortalDestination