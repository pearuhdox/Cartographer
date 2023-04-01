#Run at AECs
execute as @s[type=area_effect_cloud] at @s run function cartographer_mob_abilities:loop/tick/aec

#Run Auras
execute if entity @s[tag=ca.vfx_aura] run function cartographer_mob_abilities:aura/run_vfx

execute unless entity @s[tag=death_checked] run function cartographer_mob_abilities:passive/death_fix_branch