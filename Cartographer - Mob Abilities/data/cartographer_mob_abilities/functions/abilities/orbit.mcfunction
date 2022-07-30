execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 16
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 12

function cartographer_mob_abilities:ability_traits/cooldown_traits

function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

scoreboard players set @s ability_charge 0

scoreboard players set @s ca.orbit_timer 320

particle minecraft:sculk_charge_pop ~ ~1 ~ 1.2 1.2 1.2 0.2 50

playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..16] ~ ~ ~ 2 2
playsound minecraft:block.beacon.activate hostile @a[distance=..16] ~ ~ ~ 1.5 1

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players remove $tokened_total ca.tokens 1
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player

#say test