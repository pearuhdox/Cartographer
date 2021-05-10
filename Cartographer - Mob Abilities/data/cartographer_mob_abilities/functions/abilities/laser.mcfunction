execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 12
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 9

scoreboard players set @s ability_charge 0

scoreboard players set @e[tag=laser_marker,distance=..1,limit=1] helper_raycast 32

execute as @e[tag=laser_marker,distance=..1,limit=1] at @s run execute positioned ~ ~1 ~ run function cartographer_mob_abilities:abilities/laser/raycast

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.

kill @e[type=armor_stand,tag=laser_marker,distance=..1,limit=1]

function cartographer_mob_abilities:helper/token/return
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player
