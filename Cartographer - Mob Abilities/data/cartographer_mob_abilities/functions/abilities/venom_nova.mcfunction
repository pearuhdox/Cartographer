execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 10
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 8

scoreboard players set @s ability_charge 0

scoreboard players set @s mob_move_dis 12

execute as @a[gamemode=survival,distance=..8] at @s run tag @s add venom_novad
execute as @a[gamemode=survival,distance=..8] at @s run scoreboard players set @s damage_queue 8
execute as @a[gamemode=survival,distance=..8] at @s run function cartographer_core:helper/hurt_player/by_score
execute as @a[gamemode=survival,distance=..8] at @s run effect give @s poison 15 0

playsound minecraft:entity.spider.death hostile @a[distance=..16] ~ ~ ~ 2 0.5
playsound minecraft:block.end_portal.spawn player @a[distance=..16] ~ ~ ~ 0.5 1.75

particle minecraft:item_slime ~ ~ ~ 4 0.2 4 0.1 250 normal @a

particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 1 30 normal @a

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player

schedule function cartographer_mob_abilities:helper/attacked_reset 10t