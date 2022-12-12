tp @s ~ ~ ~ facing entity @p feet

execute if entity @s[tag=rift_marker_1] run tp @s ~ ~ ~ ~0 0
execute if entity @s[tag=rift_marker_2] run tp @s ~ ~ ~ ~120 0
execute if entity @s[tag=rift_marker_3] run tp @s ~ ~ ~ ~240 0

execute if score $rift_mode ca.var matches 1 positioned as @s rotated as @s run function cartographer_mob_abilities:animations/rift/place_spots
execute if score $rift_mode ca.var matches 2 positioned as @s rotated as @s run function cartographer_mob_abilities:animations/rift/place_spots_instant
execute if score $rift_mode ca.var matches 3 positioned as @s rotated as @s run function cartographer_mob_abilities:animations/rift/place_spots_inverse
execute positioned as @s rotated as @s run function cartographer_mob_abilities:animations/rift/particle_compressed