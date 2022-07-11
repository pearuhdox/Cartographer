execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 15
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 12

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set $aug_car ca.var 0
scoreboard players set $aug_pre ca.var 0
scoreboard players set $aug_vol ca.var 0
scoreboard players set $aug_aft ca.var 0
scoreboard players set $aug_evo ca.var 0

execute if entity @s[tag=ca.carapace] run scoreboard players set $aug_car ca.var 1
execute if entity @s[tag=ca.predator] run scoreboard players set $aug_pre ca.var 1
execute if entity @s[tag=ca.volatile] run scoreboard players set $aug_vol ca.var 1
execute if entity @s[tag=ca.aftershock] run scoreboard players set $aug_aft ca.var 1
execute if entity @s[tag=ca.evocative] run scoreboard players set $aug_evo ca.var 1

execute as @e[distance=0.5..15,limit=3,tag=!augmenter,sort=nearest,type=#bb:hostile] at @s run function cartographer_mob_abilities:abilities/augmenter/effect

function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 4 1
playsound minecraft:entity.zombie.infect hostile @a[distance=..16] ~ ~ ~ 2 0.5

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
#scoreboard players remove $tokened_total ca.tokens 1
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player

#say test