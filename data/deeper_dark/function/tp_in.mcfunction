#check
scoreboard players add @s deeper_dark.var 0
execute in deeper_dark:deeper_dark run scoreboard players set @s deeper_dark.var 1
execute as @s[scores={deeper_dark.var=0}] run tellraw @a [{"text":"["},{"translate":"deeper_dark.name","click_event":{"action":"open_url","url":"https://www.planetminecraft.com/data-pack/deeper-dark-dimension/"},"color":"#007A8A","hover_event":{"action":"show_text","value":[{"text":"Go To Website"}]},"fallback":"Deeper Dark"},{"text":"] "},{"translate":"deeper_dark.gui.error.dim_not_exist","fallback":"Something went wrong. Please try rejoining the singleplayer world/restarting the server. If the issue persists, report the bug on Planet Minecraft.","color":"red"},{"text":" [err_dim_not_exist]","color":"red"}]
scoreboard players set @a deeper_dark.var 0

#shard
function deeper_dark:remove_shard_label
execute store result score x deeper_dark.var run data get entity @s Pos[0]
execute store result score y deeper_dark.var run data get entity @s Pos[1]
execute store result score z deeper_dark.var run data get entity @s Pos[2]
execute as @s at @s run item modify entity @s weapon.mainhand deeper_dark:key

function deeper_dark:valid_spawn/setup
tag @s add deeper_dark.tp_cooldown
advancement grant @s only deeper_dark:hint

#tp
execute in deeper_dark:deeper_dark run function deeper_dark:teleport with storage deeper_dark:data lastfoundstructure2
execute at @s run spreadplayers ~ ~ 0 10 under 63 false @s[predicate=deeper_dark:in_deeper_dark]

#saftey
execute at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air destroy
execute at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:air replace minecraft:sculk_sensor
execute at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:air replace minecraft:calibrated_sculk_sensor
execute at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:air replace minecraft:sculk_shrieker

#sound
playsound minecraft:entity.warden.sonic_boom ambient @s ~ ~ ~ 1 0 1
playsound minecraft:block.portal.ambient ambient @s ~ ~ ~ 1 2 1
playsound minecraft:block.sculk_shrieker.shriek ambient @s ~ ~ ~ 1 0 1
playsound minecraft:block.respawn_anchor.set_spawn ambient @s ~ ~ ~ 1 0 1
playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 2 1

