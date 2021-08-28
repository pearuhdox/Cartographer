execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 8
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 6

scoreboard players set @s ability_charge 0

scoreboard players set @s ca.raycast 13

scoreboard players set @s mob_move_dis 23

execute as @s positioned ~ ~1 ~ run function cartographer_mob_abilities:abilities/webshot_raycast

#Trait Effects (outside of raycast call)
execute if entity @a[tag=ability_tagged] run function cartographer_mob_abilities:ability_traits/call_all_traits
execute unless entity @a[tag=ability_tagged] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

tag @a remove ability_tagged

tag @a[distance=..16] remove webbed

data merge entity @s {NoAI:0}

playsound minecraft:entity.spider.death hostile @a[distance=..16] ~ ~ ~ 2 0.5

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player