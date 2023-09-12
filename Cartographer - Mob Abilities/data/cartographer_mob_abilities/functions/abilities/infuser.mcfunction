scoreboard players set @s cooldown 15

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set $imbue_car ca.var 0
scoreboard players set $imbue_acr ca.var 0
scoreboard players set $imbue_vol ca.var 0
scoreboard players set $imbue_aft ca.var 0
scoreboard players set $imbue_evo ca.var 0
scoreboard players set $imbue_clo ca.var 0

scoreboard players set $imbue_amp_b ca.var 0
scoreboard players set $imbue_amp_r ca.var 0
scoreboard players set $imbue_amp_d ca.var 0
scoreboard players set $imbue_amp_s ca.var 0

scoreboard players set $imbue_acr_dy ca.var 0
scoreboard players set $imbue_acr_st ca.var 0
scoreboard players set $imbue_acr_gc ca.var 0
scoreboard players set $imbue_acr_re ca.var 0
scoreboard players set $imbue_acr_kn ca.var 0
scoreboard players set $imbue_acr_kf ca.var 0
scoreboard players set $imbue_acr_ks ca.var 0

execute if entity @s[tag=ca.carapace+,tag=!ca.ignore_traits_active] run scoreboard players set $imbue_car ca.var 1
execute if entity @s[tag=ca.carapace++,tag=!ca.ignore_traits_active] run scoreboard players set $imbue_car ca.var 2
execute if entity @s[tag=ca.carapace+++,tag=!ca.ignore_traits_active] run scoreboard players set $imbue_car ca.var 3
execute if entity @s[tag=ca.carapace++++,tag=!ca.ignore_traits_active] run scoreboard players set $imbue_car ca.var 4

execute if entity @s[tag=ca.acrobatic,tag=!ca.ignore_traits_active] run scoreboard players set $imbue_acr ca.var 1
execute if entity @s[tag=ca.volatile,tag=!ca.ignore_traits_active] run scoreboard players set $imbue_vol ca.var 1
execute if entity @s[tag=ca.aftershock,tag=!ca.ignore_traits_active] run scoreboard players set $imbue_aft ca.var 1
execute if entity @s[tag=ca.evocative,tag=!ca.ignore_traits_active] run scoreboard players set $imbue_evo ca.var 1
execute if entity @s[tag=ca.cloaking,tag=!ca.ignore_traits_active] run scoreboard players set $imbue_clo ca.var 1

execute if entity @s[tag=ca.brutal_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $imbue_amp_b ca.var 1
execute if entity @s[tag=ca.relentless_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $imbue_amp_r ca.var 1
execute if entity @s[tag=ca.devious_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $imbue_amp_d ca.var 1
execute if entity @s[tag=ca.sacrificial_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $imbue_amp_s ca.var 1

execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_dynamic_after] run scoreboard players set $imbue_acr_dy ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_strafe_after] run scoreboard players set $imbue_acr_st_bk ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_strafe_back_after] run scoreboard players set $imbue_acr_st ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_gap_close_after] run scoreboard players set $imbue_acr_gc ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_retreat_after] run scoreboard players set $imbue_acr_re ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_kite_after] run scoreboard players set $imbue_acr_kn ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_kite_forward_after] run scoreboard players set $imbue_acr_kf ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_kite_strafe_after] run scoreboard players set $imbue_acr_ks ca.var 1

scoreboard players set $imbue_count ca.mob_var 0

function cartographer_mob_abilities:abilities/infuser/get_potion_effects
execute as @e[distance=0.5..10,tag=!ca.infuser,type=#bb:hostile,sort=nearest,limit=3] at @s run function cartographer_mob_abilities:abilities/infuser/effect

execute if score $imbue_count ca.mob_var matches 0 run function cartographer_mob_abilities:abilities/infuser/effect

particle minecraft:witch ~ ~1 ~ 2 0.5 2 0.1 50 normal @a

playsound minecraft:block.fire.extinguish hostile @a[distance=..16] ~ ~ ~ 0.5 0.5
playsound minecraft:entity.witch.drink hostile @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.witch.drink hostile @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.witch.drink hostile @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:block.brewing_stand.brew hostile @a[distance=..16] ~ ~ ~ 1.75 1.25

execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit






#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate

