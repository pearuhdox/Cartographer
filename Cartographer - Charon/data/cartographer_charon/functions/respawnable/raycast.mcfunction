scoreboard players remove @s ca.raycast 1

execute unless block ~ ~-0.25 ~ #bb:can_raycast run tag @s add successful

execute if entity @s[tag=successful] run function cartographer_charon:respawnable/success

execute if score @s ca.raycast matches 1.. positioned ~ ~-0.25 ~ run function cartographer_charon:respawnable/raycast