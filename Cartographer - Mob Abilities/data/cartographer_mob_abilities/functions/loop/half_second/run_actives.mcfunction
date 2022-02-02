#tag @s remove avail_target

#Needle
execute if entity @s[tag=ca.needle,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:charge/needle

#Rift
execute if entity @s[tag=ca.rift,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:charge/rift

#Sweep
execute if entity @s[tag=ca.sweep,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..12] run function cartographer_mob_abilities:charge/sweep