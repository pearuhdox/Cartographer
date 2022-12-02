scoreboard players set @s cooldown 15

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set $aug_car ca.var 0
scoreboard players set $aug_vol ca.var 0
scoreboard players set $aug_aft ca.var 0
scoreboard players set $aug_evo ca.var 0
scoreboard players set $aug_clo ca.var 0

scoreboard players set $aug_amp_b ca.var 0
scoreboard players set $aug_amp_r ca.var 0
scoreboard players set $aug_amp_d ca.var 0
scoreboard players set $aug_amp_s ca.var 0

scoreboard players set $aug_bla ca.var 0
scoreboard players set $aug_gla ca.var 0
scoreboard players set $aug_ove ca.var 0
scoreboard players set $aug_ven ca.var 0
scoreboard players set $aug_cur ca.var 0
scoreboard players set $aug_zep ca.var 0
scoreboard players set $aug_vol ca.var 0
scoreboard players set $aug_web ca.var 0
scoreboard players set $aug_hor ca.var 0
scoreboard players set $aug_alc ca.var 0

scoreboard players set $aug_acr_dy ca.var 0
scoreboard players set $aug_acr_st ca.var 0
scoreboard players set $aug_acr_gc ca.var 0
scoreboard players set $aug_acr_re ca.var 0
scoreboard players set $aug_acr_kn ca.var 0
scoreboard players set $aug_acr_kf ca.var 0
scoreboard players set $aug_acr_ks ca.var 0


execute if entity @s[tag=ca.carapace+,tag=!ca.ignore_traits_active] run scoreboard players set $aug_car ca.var 1
execute if entity @s[tag=ca.carapace++,tag=!ca.ignore_traits_active] run scoreboard players set $aug_car ca.var 2
execute if entity @s[tag=ca.carapace+++,tag=!ca.ignore_traits_active] run scoreboard players set $aug_car ca.var 3
execute if entity @s[tag=ca.carapace++++,tag=!ca.ignore_traits_active] run scoreboard players set $aug_car ca.var 4

execute if entity @s[tag=ca.volatile,tag=!ca.ignore_traits_active] run scoreboard players set $aug_vol ca.var 1
execute if entity @s[tag=ca.aftershock,tag=!ca.ignore_traits_active] run scoreboard players set $aug_aft ca.var 1
execute if entity @s[tag=ca.evocative,tag=!ca.ignore_traits_active] run scoreboard players set $aug_evo ca.var 1
execute if entity @s[tag=ca.cloaking,tag=!ca.ignore_traits_active] run scoreboard players set $aug_clo ca.var 1

execute if entity @s[tag=ca.brutal_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $aug_amp_b ca.var 1
execute if entity @s[tag=ca.relentless_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $aug_amp_r ca.var 1
execute if entity @s[tag=ca.devious_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $aug_amp_d ca.var 1
execute if entity @s[tag=ca.sacrificial_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $aug_amp_s ca.var 1

execute if entity @s[tag=ca.blazing,tag=!ca.ignore_traits_active] run scoreboard players set $aug_bla ca.var 1
execute if entity @s[tag=ca.glacial,tag=!ca.ignore_traits_active] run scoreboard players set $aug_gla ca.var 1
execute if entity @s[tag=ca.overloading,tag=!ca.ignore_traits_active] run scoreboard players set $aug_ove ca.var 1
execute if entity @s[tag=ca.venemous,tag=!ca.ignore_traits_active] run scoreboard players set $aug_ven ca.var 1
execute if entity @s[tag=ca.cursing,tag=!ca.ignore_traits_active] run scoreboard players set $aug_cur ca.var 1
execute if entity @s[tag=ca.webbing,tag=!ca.ignore_traits_active] run scoreboard players set $aug_web ca.var 1
execute if entity @s[tag=ca.horrifying,tag=!ca.ignore_traits_active] run scoreboard players set $aug_hor ca.var 1
execute if entity @s[tag=ca.volatile,tag=!ca.ignore_traits_active] run scoreboard players set $aug_vol ca.var 1
execute if entity @s[tag=ca.zephyrous,tag=!ca.ignore_traits_active] run scoreboard players set $aug_zep ca.var 1

execute if entity @s[tag=ca.alchemist,tag=!ca.ignore_traits_active] run function cartographer_mob_abilities:abilities/augmenter/alchemist_save

execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_dynamic_after] run scoreboard players set $aug_acr_dy ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_strafe_after] run scoreboard players set $aug_acr_st ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_strafe_back_after] run scoreboard players set $aug_acr_bk_st ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_gap_close_after] run scoreboard players set $aug_acr_gc ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_retreat_after] run scoreboard players set $aug_acr_re ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_kite_after] run scoreboard players set $aug_acr_kn ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_kite_forward_after] run scoreboard players set $aug_acr_kf ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_kite_strafe_after] run scoreboard players set $aug_acr_ks ca.var 1

scoreboard players set $augment_count ca.mob_var 0

execute as @e[distance=0.5..15,limit=3,tag=!ca.augmenter,sort=nearest,type=#bb:hostile] at @s run function cartographer_mob_abilities:abilities/augmenter/effect

execute if score $augment_count ca.mob_var matches 0 run function cartographer_mob_abilities:abilities/augmenter/effect

execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit





playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..24] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect hostile @a[distance=..24] ~ ~ ~ 1 0.5
playsound minecraft:item.totem.use hostile @a[distance=..24] ~ ~ ~ 0.5 1.5
playsound minecraft:entity.wither.shoot hostile @a[distance=..24] ~ ~ ~ 0.45 2

particle minecraft:dust_color_transition 1 0 0 0.5 1 1 1 ~ ~1.5 ~ 2 0.5 2 0.1 250 normal @a

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate

#say test