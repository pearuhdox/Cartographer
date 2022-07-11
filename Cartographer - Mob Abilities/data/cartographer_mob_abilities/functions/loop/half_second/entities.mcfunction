#All looping effects that are entity calls (1 seconds)

#Run all actives
execute if entity @s[tag=avail_target] as @s[type=#bb:hostile,tag=ca.has_active,tag=attacking,scores={cooldown=0}] at @s run function cartographer_mob_abilities:loop/half_second/run_actives
execute unless entity @s[tag=avail_target] as @s[type=#bb:hostile,tag=ca.has_active,tag=attacking,scores={cooldown=0}] at @s run function cartographer_mob_abilities:loop/half_second/cancel_actives

#Reset near player check
#tag @s remove avail_target

#Check if mobs with abilities have needed players in range.
#execute if entity @s[tag=ca.needle,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..18] run tag @s add avail_target
#execute if entity @s[tag=ca.rift,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..18] run tag @s add avail_target
#execute if entity @s[tag=ca.sweep,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..12] run tag @s add avail_target

#Run Rift Spot Particles
execute if score $rift_vfx ability_charge matches 1.. as @s[type=area_effect_cloud,tag=rift_spot,tag=checked] at @s run function cartographer_mob_abilities:charge/rift/particle_spot

#Run Wither Blast Particles
execute as @s[type=armor_stand,tag=wither_blast] at @s run function cartographer_mob_abilities:abilities/wither_storm/visual