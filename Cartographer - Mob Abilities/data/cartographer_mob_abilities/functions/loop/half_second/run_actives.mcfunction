#tag @s remove avail_target

#Nova - With Pulse Tag
execute if entity @s[tag=ca.nova,tag=ca.pulse,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:charge/nova


#Augmenter
execute if entity @s[tag=ca.augmenter,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/augmenter

#Healer
execute if entity @s[tag=ca.healer,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/healer

#Needle
execute if entity @s[tag=ca.needle,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:charge/needle

#Quickdraw
execute if entity @s[tag=ca.quickdraw,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..11] run function cartographer_mob_abilities:charge/quickdraw

#Rift
execute if entity @s[tag=ca.rift,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:charge/rift

#Sweep
execute if entity @s[tag=ca.sweep,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..12] run function cartographer_mob_abilities:charge/sweep

#Storm
execute if entity @s[tag=ca.storm,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:charge/storm