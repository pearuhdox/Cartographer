tp @s ~ ~ ~ facing entity 0000001f-00de-140d-0000-0000000276ef feet

execute as @s at @s run tp @s ~ ~ ~ ~ 0

scoreboard players set @s ca.raycast 120
function cartographer_mob_abilities:passive/projectile/helper/lower_rift_to_ground
#tp @s ~ ~128 ~