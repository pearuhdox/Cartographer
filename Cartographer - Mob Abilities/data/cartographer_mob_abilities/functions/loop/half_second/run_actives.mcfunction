tag @s remove avail_target

#Charge
#execute if entity @s[tag=charge,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:charge/charge

#Smash
execute if entity @s[tag=smash,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..15] run function cartographer_mob_abilities:charge/smash

#Sweep
execute if entity @s[tag=sweep,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..12] run function cartographer_mob_abilities:charge/sweep

#Run Ability Canceling
#execute if entity @s[tag=charge,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=smash,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..12] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=sweep,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..12] run function cartographer_mob_abilities:helper/token/cancel_ability