scoreboard players set @s cooldown 8

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set @s ca.raycast 13

scoreboard players set @s mob_move_dis 23

execute as @s anchored eyes run function cartographer_mob_abilities:abilities/webshot/raycast

#Trait Effects (outside of raycast call)
execute if entity @a[tag=ability_tagged] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits
execute unless entity @a[tag=ability_tagged] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

tag @a remove ability_tagged

tag @a[distance=..16] remove webbed

data merge entity @s {NoAI:0}

playsound minecraft:entity.spider.death hostile @a[distance=..16] ~ ~ ~ 2 0.5

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate

#say test