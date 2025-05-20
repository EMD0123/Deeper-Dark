#if first_ver = current_ver then no fixers
execute if score first_ver deeper_dark.datafixers matches 0 run function deeper_dark:datafixers/1
execute if score first_ver deeper_dark.datafixers matches 0..1 run function deeper_dark:datafixers/2
execute if score first_ver deeper_dark.datafixers matches 0..2 run function deeper_dark:datafixers/3