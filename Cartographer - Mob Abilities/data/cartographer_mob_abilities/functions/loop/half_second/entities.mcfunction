#All looping effects that are entity calls (1 seconds)

#Run all actives
execute as @s[type=#cartographer_core:hostile,tag=has_active,tag=attacking,scores={cooldown=0}] at @s run function cartographer_mob_abilities:loop/half_second/run_actives

#Run Wither Blast Particles
execute as @s[type=armor_stand,tag=wither_blast] at @s run function cartographer_mob_abilities:abilities/wither_storm_visual