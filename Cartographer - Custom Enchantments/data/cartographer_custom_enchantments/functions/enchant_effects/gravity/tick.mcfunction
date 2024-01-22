execute unless predicate cartographer_custom_enchantments:cant_gravity if block ~ ~-0.5 ~ #cartographer_core:can_raycast if block ~ ~-1.5 ~ #cartographer_core:can_raycast if block ~ ~-2.5 ~ #cartographer_core:can_raycast if block ~ ~-3.5 ~ #cartographer_core:can_raycast run tag @s add ca.gravity_falling

execute if entity @s[tag=ca.gravity_falling] positioned ~-1.5 ~-4 ~-1.5 run effect give @e[type=#bb:hostile,dx=3,dz=3,dy=4] weakness 1 9 true

execute if predicate cartographer_custom_enchantments:cant_gravity run tag @s remove ca.gravity_falling
