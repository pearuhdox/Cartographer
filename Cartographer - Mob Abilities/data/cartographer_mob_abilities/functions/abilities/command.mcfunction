scoreboard players set @s ability_charge 0

scoreboard players set $com_car ca.var 0
scoreboard players set $com_pre ca.var 0
scoreboard players set $com_vol ca.var 0
scoreboard players set $com_aft ca.var 0
scoreboard players set $com_evo ca.var 0
scoreboard players set $com_clo ca.var 0

scoreboard players set $com_amp_b ca.var 0
scoreboard players set $com_amp_r ca.var 0
scoreboard players set $com_amp_d ca.var 0
scoreboard players set $com_amp_s ca.var 0

scoreboard players set $com_bla ca.var 0
scoreboard players set $com_gla ca.var 0
scoreboard players set $com_ove ca.var 0
scoreboard players set $com_ven ca.var 0
scoreboard players set $com_cur ca.var 0
scoreboard players set $com_zep ca.var 0
scoreboard players set $com_vol ca.var 0
scoreboard players set $com_web ca.var 0
scoreboard players set $com_hor ca.var 0
scoreboard players set $com_alc ca.var 0

execute if entity @s[tag=ca.carapace,tag=!ca.ignore_traits_active] run scoreboard players set $com_car ca.var 1
execute if entity @s[tag=ca.predator,tag=!ca.ignore_traits_active] run scoreboard players set $com_pre ca.var 1
execute if entity @s[tag=ca.volatile,tag=!ca.ignore_traits_active] run scoreboard players set $com_vol ca.var 1
execute if entity @s[tag=ca.aftershock,tag=!ca.ignore_traits_active] run scoreboard players set $com_aft ca.var 1
execute if entity @s[tag=ca.evocative,tag=!ca.ignore_traits_active] run scoreboard players set $com_evo ca.var 1
execute if entity @s[tag=ca.cloaking,tag=!ca.ignore_traits_active] run scoreboard players set $com_clo ca.var 1

execute if entity @s[tag=ca.brutal_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $com_amp_b ca.var 1
execute if entity @s[tag=ca.relentless_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $com_amp_r ca.var 1
execute if entity @s[tag=ca.devious_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $com_amp_d ca.var 1
execute if entity @s[tag=ca.sacrificial_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $com_amp_s ca.var 1

execute if entity @s[tag=ca.blazing,tag=!ca.ignore_traits_active] run scoreboard players set $com_bla ca.var 1
execute if entity @s[tag=ca.glacial,tag=!ca.ignore_traits_active] run scoreboard players set $com_gla ca.var 1
execute if entity @s[tag=ca.overloading,tag=!ca.ignore_traits_active] run scoreboard players set $com_ove ca.var 1
execute if entity @s[tag=ca.venemous,tag=!ca.ignore_traits_active] run scoreboard players set $com_ven ca.var 1
execute if entity @s[tag=ca.cursing,tag=!ca.ignore_traits_active] run scoreboard players set $com_cur ca.var 1
execute if entity @s[tag=ca.webbing,tag=!ca.ignore_traits_active] run scoreboard players set $com_web ca.var 1
execute if entity @s[tag=ca.horrifying,tag=!ca.ignore_traits_active] run scoreboard players set $com_hor ca.var 1
execute if entity @s[tag=ca.volatile,tag=!ca.ignore_traits_active] run scoreboard players set $com_vol ca.var 1
execute if entity @s[tag=ca.zephyrous,tag=!ca.ignore_traits_active] run scoreboard players set $com_zep ca.var 1

scoreboard players set $command_count ca.mob_var 0

execute as @e[distance=0.5..15,limit=3,tag=!ca.command,sort=nearest,type=#bb:hostile] at @s run function cartographer_mob_abilities:abilities/command/effect

#Cooldown is run here so it can be set properly
execute if score $command_count ca.mob_var matches 0 run function cartographer_mob_abilities:abilities/command/cancel_effect
execute if score $command_count ca.mob_var matches 1.. run function cartographer_mob_abilities:abilities/command/run_visual

function cartographer_mob_abilities:ability_traits/cooldown_traits

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate

#say test