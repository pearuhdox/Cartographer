#Nova - With Pulse Tag
execute if entity @s[tag=ca.nova,tag=ca.pulse,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:charge/nova


#Augmenter
execute if entity @s[tag=ca.augmenter,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/augmenter

#Charge
execute if entity @s[tag=ca.charge,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:charge/charge

#Healer
execute if entity @s[tag=ca.healer,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/healer

#Quickdraw
execute if entity @s[tag=ca.quickdraw,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..11] run function cartographer_mob_abilities:charge/quickdraw

#Rift
execute unless block ~ ~-1 ~ #bb:raycast if entity @s[tag=ca.rift,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:charge/rift

#Sweep
execute if entity @s[tag=ca.sweep,tag=tokened,scores={cooldown=0}] unless score @s ca.sweep_animation matches 1.. if entity @a[gamemode=!spectator,gamemode=!creative,distance=..10] run function cartographer_mob_abilities:charge/sweep

#Storm
execute if entity @s[tag=ca.storm,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:charge/storm