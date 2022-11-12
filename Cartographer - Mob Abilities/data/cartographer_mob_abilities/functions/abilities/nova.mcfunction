scoreboard players set @s cooldown 10

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

execute unless entity @s[tag=ca.pulse] run scoreboard players set @s mob_move_dis 12

function cartographer_mob_abilities:abilities/nova/calc_damage

execute if entity @s[tag=ca.pulse] run function cartographer_mob_abilities:abilities/nova/pulse/effects
execute unless entity @s[tag=ca.pulse] run function cartographer_mob_abilities:abilities/nova/normal/effects

playsound minecraft:block.end_portal.spawn player @a[distance=..16] ~ ~ ~ 0.5 1.75




#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate