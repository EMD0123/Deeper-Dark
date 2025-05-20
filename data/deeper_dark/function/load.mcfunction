schedule function deeper_dark:slowtick_1s 1s

#datafixers
scoreboard objectives add deeper_dark.datafixers dummy
#datafixer version: 3
scoreboard players set current_ver deeper_dark.datafixers 3
execute unless score first_ver deeper_dark.datafixers matches 0.. store success score not_legacy deeper_dark.datafixers run scoreboard objectives add deeper_dark.sonicattack dummy
execute if score not_legacy deeper_dark.datafixers matches 0 run scoreboard players set first_ver deeper_dark.datafixers 0
execute unless score not_legacy deeper_dark.datafixers matches 0 run scoreboard players operation first_ver deeper_dark.datafixers = current_ver deeper_dark.datafixers

scoreboard objectives add deeper_dark.sonicattack dummy
scoreboard objectives add deeper_dark.outofbounds dummy
scoreboard objectives add deeper_dark.distx+1 dummy
scoreboard objectives add deeper_dark.distx-1 dummy
scoreboard objectives add deeper_dark.distz+1 dummy
scoreboard objectives add deeper_dark.distz-1 dummy
scoreboard objectives add deeper_dark.items trigger
scoreboard objectives add deeper_dark.shrieker_sense_marker_duration dummy
scoreboard objectives add deeper_dark.ancient_dark_active dummy
scoreboard objectives add deeper_dark.tentacle_x dummy
scoreboard objectives add deeper_dark.tentacle_y dummy
scoreboard objectives add deeper_dark.tentacle_attack_time dummy
scoreboard objectives add deeper_dark.boss_attack_cooldown dummy
bossbar add deeper_dark/boss "Defender"
bossbar set minecraft:deeper_dark/boss color blue
bossbar set minecraft:deeper_dark/boss max 700
scoreboard objectives add deeper_dark.deepslate minecraft.mined:minecraft.deepslate

scoreboard objectives add deeper_dark.gamerule.disable_keepinventory_override dummy
scoreboard objectives add deeper_dark.gamerule.disable_screen_shake dummy
scoreboard objectives add deeper_dark.gamerule.disable_sculk_conversion dummy
scoreboard objectives add deeper_dark.gamerule.disable_portal_particles dummy
scoreboard objectives add deeper_dark.gamerule.shockwave_emits_light dummy
scoreboard objectives add deeper_dark.gamerule.shockwave_can_dig dummy
scoreboard objectives add deeper_dark.gamerule.shrieker_sense_scan_limit dummy
scoreboard objectives add deeper_dark.gamerule.disable_portals dummy
scoreboard objectives add deeper_dark.gamerule.sonic_boom_damage dummy

execute store result score Game deeper_dark.var run gamerule maxCommandChainLength
execute if score Game deeper_dark.var matches 65536 run gamerule maxCommandChainLength 2147483647
execute store result score Game deeper_dark.var run gamerule maxCommandForkCount
execute if score Game deeper_dark.var matches 65536 run gamerule maxCommandForkCount 2147483647


