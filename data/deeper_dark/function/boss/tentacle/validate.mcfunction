tag @n[type=minecraft:block_display,scores={deeper_dark.var=0},tag=deeper_dark.boss_segment.1,distance=0..10] add deeper_dark.selected_1
execute at @n[type=minecraft:block_display,tag=deeper_dark.selected_1] positioned ^ ^1.25 ^ run tag @n[type=minecraft:block_display,scores={deeper_dark.var=0},tag=deeper_dark.boss_segment.2,distance=0..30] add deeper_dark.selected_2
execute at @n[type=minecraft:block_display,tag=deeper_dark.selected_2] positioned ^ ^1.25 ^ run tag @n[type=minecraft:block_display,scores={deeper_dark.var=0},tag=deeper_dark.boss_segment.3,distance=0..30] add deeper_dark.selected_3
execute at @n[type=minecraft:block_display,tag=deeper_dark.selected_3] positioned ^ ^1.25 ^ run tag @n[type=minecraft:block_display,scores={deeper_dark.var=0},tag=deeper_dark.boss_segment.4,distance=0..30] add deeper_dark.selected_4
execute at @n[type=minecraft:block_display,tag=deeper_dark.selected_4] positioned ^ ^1.25 ^ run tag @n[type=minecraft:block_display,scores={deeper_dark.var=0},tag=deeper_dark.boss_segment.5,distance=0..30] add deeper_dark.selected_5
execute at @n[type=minecraft:block_display,tag=deeper_dark.selected_5] positioned ^ ^1.25 ^ run tag @n[type=minecraft:block_display,scores={deeper_dark.var=0},tag=deeper_dark.boss_segment.6,distance=0..30] add deeper_dark.selected_6


tag @n[type=minecraft:block_display,tag=deeper_dark.selected_1] add deeper_dark.selected_all
tag @n[type=minecraft:block_display,tag=deeper_dark.selected_2] add deeper_dark.selected_all
tag @n[type=minecraft:block_display,tag=deeper_dark.selected_3] add deeper_dark.selected_all
tag @n[type=minecraft:block_display,tag=deeper_dark.selected_4] add deeper_dark.selected_all
tag @n[type=minecraft:block_display,tag=deeper_dark.selected_5] add deeper_dark.selected_all
tag @n[type=minecraft:block_display,tag=deeper_dark.selected_6] add deeper_dark.selected_all