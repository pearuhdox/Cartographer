scoreboard players set @s cooldown 12

function cartographer_mob_abilities:ability_traits/cooldown_traits

function cartographer_mob_abilities:abilities/summoner/get_data

execute unless entity @s[tag=ca.summon_two] anchored eyes facing entity @p feet rotated ~ 0 if entity @s positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/summoner/summon_mob

execute if entity @s[tag=ca.summon_three] anchored eyes facing entity @p feet rotated ~135 0 if entity @s positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/summoner/summon_mob
execute if entity @s[tag=ca.summon_three] anchored eyes facing entity @p feet rotated ~-135 0 if entity @s positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/summoner/summon_mob

execute if entity @s[tag=ca.summon_two] anchored eyes facing entity @p feet rotated ~90 0 if entity @s positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/summoner/summon_mob
execute if entity @s[tag=ca.summon_two] anchored eyes facing entity @p feet rotated ~-90 0 if entity @s positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/summoner/summon_mob

scoreboard players set @s ability_charge 0

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate