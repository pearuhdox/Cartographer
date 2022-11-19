#All looping effects that are entity calls (1/2 seconds)

#Run all actives
execute if entity @s[tag=avail_target] as @s[type=#bb:hostile,tag=ca.has_active,tag=attacking,scores={cooldown=0}] at @s run function cartographer_mob_abilities:loop/half_second/run_actives
execute unless entity @s[tag=avail_target] as @s[type=#bb:hostile,tag=ca.has_active,tag=attacking,scores={cooldown=0}] at @s run function cartographer_mob_abilities:loop/half_second/cancel_actives

#Reset near player check
#tag @s remove avail_target