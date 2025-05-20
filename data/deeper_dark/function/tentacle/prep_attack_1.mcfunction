execute if data block ~ ~ ~ listener.selector.event.pos run data modify entity @s data.target.x set from block ~ ~ ~ listener.selector.event.pos[0]
execute if data block ~ ~ ~ listener.selector.event.pos run data modify entity @s data.target.z set from block ~ ~ ~ listener.selector.event.pos[2]
execute if data block ~ ~ ~ listener.event.pos run data modify entity @s data.target.x set from block ~ ~ ~ listener.event.pos[0]
execute if data block ~ ~ ~ listener.event.pos run data modify entity @s data.target.z set from block ~ ~ ~ listener.event.pos[2]