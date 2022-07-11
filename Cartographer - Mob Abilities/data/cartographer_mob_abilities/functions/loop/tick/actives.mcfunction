#Run Smash Land Effect
execute if entity @s[tag=ca.smash] run function cartographer_mob_abilities:loop/tick/smash_branch

#Run Sweep Warning
execute if entity @s[tag=ca.sweep,tag=tokened,scores={cooldown=0}] run particle angry_villager ~ ~1.5 ~ 0 0 0 0 1 normal

#Laser
execute if entity @s[tag=ca.laser,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..32] run function cartographer_mob_abilities:charge/laser

#Laser Animation Cancel
execute if entity @s[tag=ca.laser,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..32] run function cartographer_mob_abilities:helper/token/cancel_ability

#Fix Tags
execute if entity @s[tag=!ability_checked,tag=!duplicate] run function cartographer_mob_abilities:passive/ability_fix

execute if entity @s[type=#bb:hostile,tag=ca.has_active,tag=!los_checked,scores={cooldown=0}] if entity @a[distance=..40] run scoreboard players set $do_los flag 1