execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 15
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 12

scoreboard players set @s ability_charge 0

effect give @e[distance=0.5..10,tag=!healer,type=#cartographer_core:undead,type=!player] minecraft:instant_damage 1 2

effect give @e[distance=0.5..10,tag=!healer,type=!#cartographer_core:undead,type=!player] minecraft:instant_health 1 2

execute as @e[distance=0.5..10,tag=!healer,type=#cartographer_core:hostile] at @s run particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0.05 15

particle minecraft:firework ~ ~1 ~ 0 0 0 0.6 100 normal
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.3 100 normal

playsound minecraft:entity.zombie_villager.converted hostile @a[distance=..16] ~ ~ ~ 3 2
playsound minecraft:entity.player.levelup hostile @a[distance=..16] ~ ~ ~ 3 1.5

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player
