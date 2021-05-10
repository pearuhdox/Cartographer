execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 15
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 12

scoreboard players set @s ability_charge 0

scoreboard players set @e[distance=0.5..15,type=#cartographer_core:hostile,tag=!permacloak,tag=!cloaker] effect_cloaked 12

particle minecraft:dust 0.5 0 1 1 ~ ~1.5 ~ 5 1 5 0.1 700 normal @a

playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..16] ~ ~ ~ 2 0.8

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player
