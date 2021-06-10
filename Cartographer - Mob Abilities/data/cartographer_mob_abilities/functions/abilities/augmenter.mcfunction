execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 15
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 12

scoreboard players set @s ability_charge 0

execute as @e[distance=0.5..15,limit=3,tag=!augmenter,sort=nearest,type=#cartographer_core:hostile] at @s run function cartographer_mob_abilities:abilities/augmenter/effect

playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 4 1
playsound minecraft:entity.zombie.infect hostile @a[distance=..16] ~ ~ ~ 2 0.5

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player
