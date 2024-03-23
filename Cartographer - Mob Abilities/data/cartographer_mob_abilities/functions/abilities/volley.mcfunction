scoreboard players set @s cooldown 10

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

particle minecraft:poof ~ ~0.2 ~ 0.3 0.3 0.3 0.075 15 normal @a
execute anchored eyes run particle minecraft:cloud ^ ^ ^0.5 0.3 0.3 0.3 0.075 5 normal @a

playsound minecraft:item.trident.throw hostile @a[distance=..20] ~ ~ ~ 2 0.75
playsound minecraft:item.crossbow.shoot hostile @a[distance=..20] ~ ~ ~ 2 0.75

execute store result storage cartographer:macro.mob_abilities aim_direction int 1 run scoreboard players get @s ca.aim_direction
execute store result storage cartographer:macro.mob_abilities aim_direction_y int 1 run scoreboard players get @s ca.aim_direction_y
function cartographer_mob_abilities:abilities/volley/macro with storage cartographer:macro.mob_abilities


#Run not on hit traits
execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate