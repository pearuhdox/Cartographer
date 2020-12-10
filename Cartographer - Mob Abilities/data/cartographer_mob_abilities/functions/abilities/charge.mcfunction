scoreboard players set @s cooldown 8

scoreboard players set @s ability_charge 0

scoreboard players set @s helper_raycast 10

execute as @s positioned ~ ~1 ~ run function cartographer_mob_abilities:abilities/charge_raycast

data merge entity @s {NoAI:0}

execute as @a[distance=..16] at @s run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..16] ~ ~ ~ 2 2

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..20] cooldown 3
tag @s remove tokened

kill @e[type=armor_stand,tag=charge_marker]

schedule function cartographer_mob_abilities:helper/attacked_reset 10t