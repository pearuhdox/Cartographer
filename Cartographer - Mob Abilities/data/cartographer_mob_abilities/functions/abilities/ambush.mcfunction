execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 10
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 8

scoreboard players set @s ability_charge 0

scoreboard players set @s mob_move_dis 16
scoreboard players set @s mob_atk_dis 16

scoreboard players set @s mob_move_red 31
scoreboard players set @s mob_atk_red 31

tag @s add ambushing

particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.05 40

particle minecraft:smoke ~ ~ ~ 0.5 0.3 0.5 0.05 40

execute as @p[distance=..25] at @s run tp @e[tag=ambushing] ^ ^ ^-1.5

execute unless block ~ ~ ~ #cartographer_core:can_raycast run tp @s ~ ~1.5 ~

execute as @p[distance=..25] at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~ 2 0.5

tag @s remove ambushing

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove tokened
tag @s remove attacking
tag @s remove can_see_player
