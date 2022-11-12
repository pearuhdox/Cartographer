scoreboard players set @s cooldown 16

function cartographer_mob_abilities:ability_traits/cooldown_traits

execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

scoreboard players set @s ability_charge 0

#Make length of orbs equivalent to cooldown of attack
function cartographer_mob_abilities:abilities/orbit/set_duration

#For orbit only we set cooldown 0 here so we can do the calculation above
execute if score @s ca.accelerate_stacks matches 2.. run scoreboard players set @s cooldown 0

particle minecraft:sculk_charge_pop ~ ~1 ~ 1.2 1.2 1.2 0.2 50

playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..16] ~ ~ ~ 2 2
playsound minecraft:block.beacon.activate hostile @a[distance=..16] ~ ~ ~ 1.5 1



#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate

#say test