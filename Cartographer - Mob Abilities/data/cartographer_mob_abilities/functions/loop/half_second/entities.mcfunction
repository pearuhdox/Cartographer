#All looping effects that are entity calls (1/2 seconds)

#Run all actives
execute if entity @s[tag=avail_target] as @s[type=#bb:hostile,tag=ca.has_active,tag=attacking,scores={cooldown=0}] at @s run function cartographer_mob_abilities:loop/half_second/run_actives
execute unless entity @s[tag=avail_target] as @s[type=#bb:hostile,tag=ca.has_active,tag=attacking,scores={cooldown=0}] at @s run function cartographer_mob_abilities:loop/half_second/cancel_actives

#Reset near player check
#tag @s remove avail_target


#Run Rift Spot Particles
execute if score $rift_vfx ability_charge matches 1.. as @s[type=area_effect_cloud,tag=rift_spot,tag=checked] at @s run function cartographer_mob_abilities:charge/rift/particle_spot

#Run Wither Blast Particles
execute as @s[type=armor_stand,tag=wither_blast] at @s run function cartographer_mob_abilities:abilities/storm/visual