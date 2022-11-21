execute unless block ~ ~-0.5 ~ #bb:can_raycast run function cartographer_mob_abilities:charge/grenadier/projectile/ring_vfx
scoreboard players remove @s ca.raycast 1
execute if score @s ca.raycast matches 1.. if block ~ ~-0.5 ~ #bb:can_raycast positioned ~ ~-0.5 ~ run function cartographer_mob_abilities:charge/grenadier/projectile/place_ring