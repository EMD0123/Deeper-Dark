function deeper_dark:itemstack_remove_1
execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:["deeper_dark.tentacles"],CustomName:'"Sculk Tentacle"'}
execute if predicate deeper_dark:water run setblock ~ ~ ~ minecraft:sculk_sensor[waterlogged=true]
execute unless predicate deeper_dark:water run setblock ~ ~ ~ minecraft:sculk_sensor[waterlogged=false]