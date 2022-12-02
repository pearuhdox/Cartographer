scoreboard players set @s cooldown 15

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set $heal_car ca.var 0
scoreboard players set $heal_acr ca.var 0
scoreboard players set $heal_vol ca.var 0
scoreboard players set $heal_aft ca.var 0
scoreboard players set $heal_evo ca.var 0
scoreboard players set $heal_clo ca.var 0

scoreboard players set $heal_amp_b ca.var 0
scoreboard players set $heal_amp_r ca.var 0
scoreboard players set $heal_amp_d ca.var 0
scoreboard players set $heal_amp_s ca.var 0

scoreboard players set $heal_acr_dy ca.var 0
scoreboard players set $heal_acr_st ca.var 0
scoreboard players set $heal_acr_gc ca.var 0
scoreboard players set $heal_acr_re ca.var 0
scoreboard players set $heal_acr_kn ca.var 0
scoreboard players set $heal_acr_kf ca.var 0
scoreboard players set $heal_acr_ks ca.var 0

execute if entity @s[tag=ca.carapace+,tag=!ca.ignore_traits_active] run scoreboard players set $heal_car ca.var 1
execute if entity @s[tag=ca.carapace++,tag=!ca.ignore_traits_active] run scoreboard players set $heal_car ca.var 2
execute if entity @s[tag=ca.carapace+++,tag=!ca.ignore_traits_active] run scoreboard players set $heal_car ca.var 3
execute if entity @s[tag=ca.carapace++++,tag=!ca.ignore_traits_active] run scoreboard players set $heal_car ca.var 4

execute if entity @s[tag=ca.acrobatic,tag=!ca.ignore_traits_active] run scoreboard players set $heal_acr ca.var 1
execute if entity @s[tag=ca.volatile,tag=!ca.ignore_traits_active] run scoreboard players set $heal_vol ca.var 1
execute if entity @s[tag=ca.aftershock,tag=!ca.ignore_traits_active] run scoreboard players set $heal_aft ca.var 1
execute if entity @s[tag=ca.evocative,tag=!ca.ignore_traits_active] run scoreboard players set $heal_evo ca.var 1
execute if entity @s[tag=ca.cloaking,tag=!ca.ignore_traits_active] run scoreboard players set $heal_clo ca.var 1

execute if entity @s[tag=ca.brutal_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $heal_amp_b ca.var 1
execute if entity @s[tag=ca.relentless_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $heal_amp_r ca.var 1
execute if entity @s[tag=ca.devious_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $heal_amp_d ca.var 1
execute if entity @s[tag=ca.sacrificial_amplify,tag=!ca.ignore_traits_active] run scoreboard players set $heal_amp_s ca.var 1

execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_dynamic_after] run scoreboard players set $heal_acr_dy ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_strafe_after] run scoreboard players set $heal_acr_st_bk ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_strafe_back_after] run scoreboard players set $heal_acr_st ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_gap_close_after] run scoreboard players set $heal_acr_gc ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_retreat_after] run scoreboard players set $heal_acr_re ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_kite_after] run scoreboard players set $heal_acr_kn ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_kite_forward_after] run scoreboard players set $heal_acr_kf ca.var 1
execute if entity @s[tag=!ca.ignore_traits_active,tag=ca.acro_kite_strafe_after] run scoreboard players set $heal_acr_ks ca.var 1

scoreboard players set $heal_count ca.mob_var 0

execute as @e[distance=0.5..10,tag=!ca.healer,type=#bb:hostile,sort=nearest,limit=3] at @s run function cartographer_mob_abilities:abilities/healer/effect

execute if score $heal_count ca.mob_var matches 0 run function cartographer_mob_abilities:abilities/healer/effect

particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 40 normal
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.2 40 normal

playsound minecraft:entity.zombie_villager.converted hostile @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.player.levelup hostile @a[distance=..16] ~ ~ ~ 1 1.5

playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 0.75 0.5
playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 0.75 0.5

playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 0.75 1
playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 0.75 1

playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1.25 2
playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1.25 2

playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 0.75 0.75
playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 0.75 0.75

playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1.25 1.5
playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1.25 1.5

execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit






#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate

#say test