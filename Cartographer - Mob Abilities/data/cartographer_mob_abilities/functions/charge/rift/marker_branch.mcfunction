function cartographer_mob_abilities:charge/rift/place_spots
function cartographer_mob_abilities:charge/rift/particle_compressed

execute as @e[type=area_effect_cloud,distance=..18,tag=rift_spot,tag=!checked] at @s run function cartographer_mob_abilities:charge/rift/spot_recurse_start