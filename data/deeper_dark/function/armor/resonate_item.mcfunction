playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 2 0
effect give @s minecraft:glowing 60 0 false
advancement grant @a[predicate=deeper_dark:enchantment_resonate,nbt={HurtTime:1s}] only deeper_dark:resonate
execute at @s anchored eyes run particle dust{color:[0.498,0.247,0.698],scale:1} ^ ^ ^ 0.4 0.4 0.4 1 10 force