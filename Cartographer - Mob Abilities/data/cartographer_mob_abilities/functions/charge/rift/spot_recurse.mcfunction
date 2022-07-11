scoreboard players remove @s ca.raycast 1

#execute if score @s ca.raycast matches 0 run say deleting
execute if score @s ca.raycast matches 0 run kill @s

#End the recursion if the block it is in is raycastable and the block it is beneath is solid.
execute if block ~ ~ ~ #bb:can_raycast unless block ~ ~-1 ~ #bb:can_raycast run scoreboard players set @s ca.raycast 0
#execute if block ~ ~ ~ #bb:can_raycast unless block ~ ~-1 ~ #bb:can_raycast run say done

#Teleport down if the block below is raycastable. (Stops at solids)
#execute if score @s ca.raycast matches 1.. if block ~ ~-1 ~ #bb:can_raycast run particle barrier ~ ~ ~ 0 0 0 0 1 force
execute if score @s ca.raycast matches 1.. if block ~ ~-1 ~ #bb:can_raycast run tp @s ~ ~-1 ~
execute if score @s ca.raycast matches 1.. if block ~ ~-1 ~ #bb:can_raycast positioned ~ ~-1 ~ run function cartographer_mob_abilities:charge/rift/spot_recurse

#Teleport up if the block it is within is not raycastable (meaning solid)
#execute if score @s ca.raycast matches 1.. unless block ~ ~ ~ #bb:can_raycast run particle barrier ~ ~ ~ 0 0 0 0 1 force
execute if score @s ca.raycast matches 1.. unless block ~ ~ ~ #bb:can_raycast run tp @s ~ ~1 ~
execute if score @s ca.raycast matches 1.. unless block ~ ~ ~ #bb:can_raycast positioned ~ ~1 ~ run function cartographer_mob_abilities:charge/rift/spot_recurse