execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 15
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 12

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set $heal_car ca.var 0
scoreboard players set $heal_pre ca.var 0
scoreboard players set $heal_vol ca.var 0
scoreboard players set $heal_aft ca.var 0
scoreboard players set $heal_evo ca.var 0

execute if entity @s[tag=ca.carapace] run scoreboard players set $heal_car ca.var 1
execute if entity @s[tag=ca.predator] run scoreboard players set $heal_pre ca.var 1
execute if entity @s[tag=ca.volatile] run scoreboard players set $heal_vol ca.var 1
execute if entity @s[tag=ca.aftershock] run scoreboard players set $heal_aft ca.var 1
execute if entity @s[tag=ca.evocative] run scoreboard players set $heal_evo ca.var 1

execute as @e[distance=0.5..10,tag=!healer,type=#bb:hostile,sort=nearest,limit=3] at @s run function cartographer_mob_abilities:abilities/healer/effect

particle minecraft:firework ~ ~1 ~ 0 0 0 0.6 100 normal
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.3 100 normal

playsound minecraft:entity.zombie_villager.converted hostile @a[distance=..16] ~ ~ ~ 3 2
playsound minecraft:entity.player.levelup hostile @a[distance=..16] ~ ~ ~ 3 1.5

function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players remove $tokened_total ca.tokens 1
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player

#say test