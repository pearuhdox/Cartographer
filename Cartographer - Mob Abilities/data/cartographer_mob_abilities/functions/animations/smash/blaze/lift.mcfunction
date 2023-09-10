scoreboard players set $smash_slam_blaze_height ca.mob_var 0

execute if block ~ ~-1 ~ #cartographer_core:can_raycast run scoreboard players add $smash_slam_blaze_height ca.mob_var 1
execute if block ~ ~-2 ~ #cartographer_core:can_raycast run scoreboard players add $smash_slam_blaze_height ca.mob_var 1
execute if block ~ ~-3 ~ #cartographer_core:can_raycast run scoreboard players add $smash_slam_blaze_height ca.mob_var 1
execute if block ~ ~-4 ~ #cartographer_core:can_raycast run scoreboard players add $smash_slam_blaze_height ca.mob_var 1

execute if score $smash_slam_blaze_height ca.mob_var matches 0 run scoreboard players set @s co_y 13
execute if score $smash_slam_blaze_height ca.mob_var matches 1 run scoreboard players set @s co_y 11
execute if score $smash_slam_blaze_height ca.mob_var matches 2 run scoreboard players set @s co_y 9
execute if score $smash_slam_blaze_height ca.mob_var matches 3.. run scoreboard players set @s co_y 6

function motion:motion/push

playsound minecraft:entity.ravager.attack hostile @a[distance=..24] ~ ~ ~ 5 0.85
particle minecraft:crit ~ ~3 ~ 0.7 2 0.7 0 100