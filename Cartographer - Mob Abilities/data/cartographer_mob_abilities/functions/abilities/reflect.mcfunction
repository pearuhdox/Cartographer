scoreboard players set @s cooldown 8

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

#Token Management. Remove the Token, set all nearby players token refresh on cooldown. - Check Accelerate Stacks First
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate