scoreboard players set $fangs ca.raycast 16

scoreboard players set $height ca.raycast 40

execute facing entity 0000001f-00de-140d-0000-0000000276ef feet rotated ~ 0 if block ~ ~-0.25 ~ #cartographer_core:can_raycast run function cartographer_mob_abilities:projectiles/create/fang/move_down