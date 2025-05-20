function deeper_dark:itemstack_remove_1
execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:["deeper_dark.anticatalyst"],CustomName:'"Anticatalyst"'}
setblock ~ ~ ~ minecraft:cobbled_deepslate
execute align xyz positioned ~.5 ~.5 ~.5 run function deeper_dark:anticatalyst/block_base
execute align xyz positioned ~.5 ~.5 ~.5 run function deeper_dark:anticatalyst/block_glow