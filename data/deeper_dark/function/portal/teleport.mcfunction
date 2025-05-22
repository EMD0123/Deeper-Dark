tag @s add deeper_dark.tp_cooldown

#item
execute if score Game deeper_dark.var matches 1 at @s[nbt={SelectedItem:{id:"minecraft:echo_shard"}}] as @s run function deeper_dark:remove_shard_label
execute if score Game deeper_dark.var matches 1 at @s[nbt={SelectedItem:{id:"minecraft:echo_shard"}}] as @s store result score x deeper_dark.var run data get entity @s Pos[0]
execute if score Game deeper_dark.var matches 1 at @s[nbt={SelectedItem:{id:"minecraft:echo_shard"}}] as @s store result score y deeper_dark.var run data get entity @s Pos[1]
execute if score Game deeper_dark.var matches 1 at @s[nbt={SelectedItem:{id:"minecraft:echo_shard"}}] as @s store result score z deeper_dark.var run data get entity @s Pos[2]
execute if score Game deeper_dark.var matches 1 at @s[nbt={SelectedItem:{id:"minecraft:echo_shard"}}] as @s run item modify entity @s weapon.mainhand deeper_dark:key

execute if score Game deeper_dark.var matches 0 at @s[nbt={SelectedItem:{id:"minecraft:echo_shard"}}] run function deeper_dark:remove_shard_label
execute if score Game deeper_dark.var matches 0 at @s[nbt={SelectedItem:{id:"minecraft:echo_shard"}}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deeper_dark.item"]}
execute if score Game deeper_dark.var matches 0 at @s[nbt={SelectedItem:{id:"minecraft:echo_shard"}}] run item replace entity @n[tag=deeper_dark.item] weapon.mainhand from entity @s weapon.mainhand
execute if score Game deeper_dark.var matches 0 at @s[nbt={SelectedItem:{id:"minecraft:echo_shard"}}] run data remove entity @n[tag=deeper_dark.item] equipment.mainhand.components."minecraft:custom_data".deeper_dark
execute if score Game deeper_dark.var matches 0 at @s[nbt={SelectedItem:{id:"minecraft:echo_shard"}}] run data remove entity @n[tag=deeper_dark.item] equipment.mainhand.components."minecraft:enchantment_glint_override"
execute if score Game deeper_dark.var matches 0 at @s[nbt={SelectedItem:{id:"minecraft:echo_shard"}}] store result score @n[tag=deeper_dark.item] deeper_dark.var run data get entity @n[tag=deeper_dark.item] equipment.mainhand.components."minecraft:custom_data"
execute if score Game deeper_dark.var matches 0 at @s[nbt={SelectedItem:{id:"minecraft:echo_shard"}}] if score @n[tag=deeper_dark.item] deeper_dark.var matches 0 run data remove entity @n[tag=deeper_dark.item] equipment.mainhand.components."minecraft:custom_data"
execute if score Game deeper_dark.var matches 0 at @s[nbt={SelectedItem:{id:"minecraft:echo_shard"}}] run item replace entity @s weapon.mainhand from entity @n[tag=deeper_dark.item] weapon.mainhand
execute if score Game deeper_dark.var matches 0 at @s[nbt={SelectedItem:{id:"minecraft:echo_shard"}}] run kill @e[tag=deeper_dark.item]



$execute if score Game deeper_dark.var matches 0 in $(dim) run tp @s $(x) $(y) $(z)
$execute if score Game deeper_dark.var matches 1 in deeper_dark:deeper_dark run tp @s $(x) $(y) $(z)
execute at @s run playsound minecraft:entity.warden.sonic_boom block @s ~ ~ ~ 1 0
execute at @s run playsound minecraft:block.portal.travel block @s ~ ~ ~ 1 1
execute at @s run playsound minecraft:block.sculk_shrieker.shriek block @s ~ ~ ~ 1 0
execute at @s run playsound minecraft:block.respawn_anchor.set_spawn block @s ~ ~ ~ 1 0



execute if score Game deeper_dark.var matches 1 at @s[nbt={SelectedItem:{id:"minecraft:echo_shard"}}] run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 2 1

#light
$execute if score Game deeper_dark.var matches 0 in $(dim) run summon minecraft:marker $(x) $(y) $(z) {Rotation:[0F,0F],Tags:["deeper_dark.portal_sync"]}
$execute if score Game deeper_dark.var matches 0 in $(dim) run summon minecraft:marker $(x) $(y) $(z) {Rotation:[90F,0F],Tags:["deeper_dark.portal_sync"]}
$execute if score Game deeper_dark.var matches 1 in deeper_dark:deeper_dark run summon minecraft:marker $(x) $(y) $(z) {Rotation:[0F,0F],Tags:["deeper_dark.portal_sync"]}
$execute if score Game deeper_dark.var matches 1 in deeper_dark:deeper_dark run summon minecraft:marker $(x) $(y) $(z) {Rotation:[90F,0F],Tags:["deeper_dark.portal_sync"]}

