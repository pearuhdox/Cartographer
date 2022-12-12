scoreboard players set $smash_slam_blaze_height ca.mob_var 0

execute if block ~ ~-1 ~ #cartographer_core:can_raycast run scoreboard players add $smash_slam_blaze_height ca.mob_var 1
execute if block ~ ~-2 ~ #cartographer_core:can_raycast run scoreboard players add $smash_slam_blaze_height ca.mob_var 1
execute if block ~ ~-3 ~ #cartographer_core:can_raycast run scoreboard players add $smash_slam_blaze_height ca.mob_var 1
execute if block ~ ~-4 ~ #cartographer_core:can_raycast run scoreboard players add $smash_slam_blaze_height ca.mob_var 1

execute if score $smash_slam_blaze_height ca.mob_var matches 0 run scoreboard players set @s co_y 15
execute if score $smash_slam_blaze_height ca.mob_var matches 1 run scoreboard players set @s co_y 12
execute if score $smash_slam_blaze_height ca.mob_var matches 2 run scoreboard players set @s co_y 9
execute if score $smash_slam_blaze_height ca.mob_var matches 3.. run scoreboard players set @s co_y 6

function motion:motion/push