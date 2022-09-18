scoreboard players set @s cooldown 15

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set $heal_car ca.var 0
scoreboard players set $heal_pre ca.var 0
scoreboard players set $heal_vol ca.var 0
scoreboard players set $heal_aft ca.var 0
scoreboard players set $heal_evo ca.var 0

scoreboard players set $heal_amp_b ca.var 0
scoreboard players set $heal_amp_r ca.var 0
scoreboard players set $heal_amp_d ca.var 0
scoreboard players set $heal_amp_s ca.var 0

execute if entity @s[tag=ca.carapace,tag=!ca.ignore_traits_active] run scoreboard players set $heal_car ca.var 1
execute if entity @s[tag=ca.predator,tag=!ca.ignore_traits_active] run scoreboard players set $heal_pre ca.var 1
execute if entity @s[tag=ca.volatile,tag=!ca.ignore_traits_active] run scoreboard players set $heal_vol ca.var 1
execute if entity @s[tag=ca.aftershock,tag=!ca.ignore_traits_active] run scoreboard players set $heal_aft ca.var 1
execute if entity @s[tag=ca.evocative,tag=!ca.ignore_traits_active] run scoreboard players set $heal_evo ca.var 1

execute if entity @s[tag=ca.brutal_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $heal_amp_b ca.var 1
execute if entity @s[tag=ca.relentless_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $heal_amp_r ca.var 1
execute if entity @s[tag=ca.devious_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $heal_amp_d ca.var 1
execute if entity @s[tag=ca.sacrificial_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $heal_amp_s ca.var 1

execute as @e[distance=0.5..10,tag=!healer,type=#bb:hostile,sort=nearest,limit=3] at @s run function cartographer_mob_abilities:abilities/healer/effect

particle minecraft:firework ~ ~1 ~ 0 0 0 0.6 100 normal
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.3 100 normal

playsound minecraft:entity.zombie_villager.converted hostile @a[distance=..16] ~ ~ ~ 3 2
playsound minecraft:entity.player.levelup hostile @a[distance=..16] ~ ~ ~ 3 1.5

execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate

#say test