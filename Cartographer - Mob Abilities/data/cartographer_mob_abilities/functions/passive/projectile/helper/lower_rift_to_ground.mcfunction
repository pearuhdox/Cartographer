execute if block ~ ~-0.1 ~ #bb:can_raycast run tp @s ~ ~-0.1 ~
scoreboard players remove @s ca.raycast 1

execute if score @s ca.raycast matches 1.. as @s at @s if block ~ ~-0.1 ~ #bb:can_raycast run function cartographer_mob_abilities:passive/projectile/helper/lower_rift_to_ground