execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 8
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 6

scoreboard players set @s ability_charge 0

scoreboard players set @s helper_raycast 21

execute as @s positioned ~ ~1 ~ run function cartographer_mob_abilities:abilities/charge_raycast

data merge entity @s {NoAI:0}

execute as @a[distance=..16] at @s run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..16] ~ ~ ~ 2 2

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove attacking
tag @s remove tokened

kill @e[type=armor_stand,tag=charge_marker]

schedule function cartographer_mob_abilities:helper/attacked_reset 10t