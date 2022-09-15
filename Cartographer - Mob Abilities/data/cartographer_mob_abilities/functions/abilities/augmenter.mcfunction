execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 15

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set $aug_car ca.var 0
scoreboard players set $aug_pre ca.var 0
scoreboard players set $aug_vol ca.var 0
scoreboard players set $aug_aft ca.var 0
scoreboard players set $aug_evo ca.var 0

scoreboard players set $aug_amp_b ca.var 0
scoreboard players set $aug_amp_r ca.var 0
scoreboard players set $aug_amp_d ca.var 0
scoreboard players set $aug_amp_s ca.var 0

execute if entity @s[tag=ca.carapace,tag=!ca.ignore_traits_active] run scoreboard players set $aug_car ca.var 1
execute if entity @s[tag=ca.predator,tag=!ca.ignore_traits_active] run scoreboard players set $aug_pre ca.var 1
execute if entity @s[tag=ca.volatile,tag=!ca.ignore_traits_active] run scoreboard players set $aug_vol ca.var 1
execute if entity @s[tag=ca.aftershock,tag=!ca.ignore_traits_active] run scoreboard players set $aug_aft ca.var 1
execute if entity @s[tag=ca.evocative,tag=!ca.ignore_traits_active] run scoreboard players set $aug_evo ca.var 1

execute if entity @s[tag=ca.brutal_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $aug_amp_b ca.var 1
execute if entity @s[tag=ca.relentless_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $aug_amp_r ca.var 1
execute if entity @s[tag=ca.devious_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $aug_amp_d ca.var 1
execute if entity @s[tag=ca.sacrificial_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $aug_amp_s ca.var 1


execute as @e[distance=0.5..15,limit=3,tag=!augmenter,sort=nearest,type=#bb:hostile] at @s run function cartographer_mob_abilities:abilities/augmenter/effect

execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 4 1
playsound minecraft:entity.zombie.infect hostile @a[distance=..16] ~ ~ ~ 2 0.5

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate

#say test