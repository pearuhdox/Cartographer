execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 15
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 12

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set @e[distance=0.5..15,type=#bb:hostile,tag=!ca.shimmerskin,tag=!cloaker] ca.effect_cloak 12

particle minecraft:dust 0.5 0 1 1 ~ ~1.5 ~ 5 1 5 0.1 700 normal @a

playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..16] ~ ~ ~ 2 0.8

function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players remove $tokened_total ca.tokens 1
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player

#say test