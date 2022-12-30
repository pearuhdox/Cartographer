scoreboard players set @s cooldown 12

function cartographer_mob_abilities:ability_traits/cooldown_traits

data modify entity @s NoAI set value 0b

scoreboard players set @s ability_charge 0

execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit


#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate