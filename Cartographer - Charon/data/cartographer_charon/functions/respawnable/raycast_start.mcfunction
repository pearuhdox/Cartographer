scoreboard players set @s ca.raycast 20

function cartographer_charon:respawnable/raycast

execute if entity @s[tag=no_near_player,tag=successful] at @s run function cartographer_charon:respawnable/effects

tag @s remove successful