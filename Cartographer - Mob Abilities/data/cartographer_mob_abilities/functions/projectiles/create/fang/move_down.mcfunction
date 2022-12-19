scoreboard players remove $height ca.raycast 1

tp @s ~ ~-0.25 ~

execute unless block ~ ~-0.25 ~ #cartographer_core:can_raycast run scoreboard players set $height ca.raycast 0

execute unless score $height ca.raycast matches 1.. unless block ~ ~-0.25 ~ #cartographer_core:can_raycast run function cartographer_mob_abilities:projectiles/create/fang/start_create

execute if score $height ca.raycast matches 1.. if block ~ ~-0.25 ~ #cartographer_core:can_raycast positioned ~ ~-0.25 ~ run function cartographer_mob_abilities:projectiles/create/fang/move_down
