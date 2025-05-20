execute at @s if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air run playsound minecraft:entity.warden.emerge hostile @a ~ ~ ~ 5
execute at @s if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air run summon warden ~ ~10000 ~ {Brain: {memories: {"minecraft:dig_cooldown": {value: {}, ttl: 1200L}, "minecraft:is_emerging": {value: {}, ttl: 137L}}},Tags:["deeper_dark.warden_spawned"]}
tp @s[type=marker] ~ -1000 ~
kill @s[type=marker]