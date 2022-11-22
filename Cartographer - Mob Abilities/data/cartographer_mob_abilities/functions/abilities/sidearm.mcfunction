scoreboard players set @s cooldown 6

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

particle minecraft:smoke ~ ~0.2 ~ 0.3 0.3 0.3 0.075 15 normal @a
execute anchored eyes run particle minecraft:smoke ^ ^ ^0.5 0.3 0.3 0.3 0.075 15 normal @a

scoreboard players set @s mob_move_red 6

playsound minecraft:item.crossbow.shoot hostile @a[distance=..15] ~ ~ ~ 1 1.5


execute anchored eyes positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/sidearm/branch


#Run not on hit traits
execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate