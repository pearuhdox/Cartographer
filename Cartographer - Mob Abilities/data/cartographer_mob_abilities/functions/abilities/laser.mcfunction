scoreboard players set @s cooldown 12

scoreboard players set @s ability_charge 0

scoreboard players set @s helper_raycast 20

execute as @s positioned ~ ~1 ~ run function cartographer_mob_abilities:abilities/laser_raycast

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..20] cooldown 4
tag @s remove tokened