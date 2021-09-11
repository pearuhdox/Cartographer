tag @s remove avail_target

#Charge
execute if entity @s[tag=ca.charge,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:charge/charge

#Nova
execute if entity @s[tag=ca.nova,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:charge/nova

#Ambush
execute if entity @s[tag=ca.ambush,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:charge/ambush

#Healer
execute if entity @s[tag=ca.healer,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:charge/healer

#Augmenter
execute if entity @s[tag=ca.augmenter,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:charge/augmenter

#Cloaker
execute if entity @s[tag=ca.cloaker,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:charge/cloaker

#Hookshot
execute if entity @s[tag=ca.hookshot,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/hookshot

#Smash
execute if entity @s[tag=ca.smash,tag=tokened,tag=!leaping,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/smash

#Webshot
execute if entity @s[tag=ca.webshot,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/webshot

#Disarm
execute if entity @s[tag=ca.disarm,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..8] run function cartographer_mob_abilities:charge/disarm

#Magic Missile
execute if entity @s[tag=ca.magic_missile,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..24] run function cartographer_mob_abilities:charge/magic_missile

#Wither Storm
execute if entity @s[tag=ca.wither_storm,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:charge/wither_storm

#Trapper
execute if entity @s[tag=ca.trapper,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/trapper

#Duplicate
execute if entity @s[tag=ca.duplicator,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/duplicator

#Rift
#execute if entity @s[tag=ca.rift,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:charge/rift

#Run Ability Canceling
execute if entity @s[tag=ca.charge,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.nova,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.ambush,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.healer,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.augmenter,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.cloaker,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.hookshot,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.webshot,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.disarm,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..8] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.smash,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..15] run function cartographer_mob_abilities:helper/token/cancel_ability
#execute if entity @s[tag=ca.rift,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:helper/token/cancel_ability
#execute if entity @s[tag=ca.sweep,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..12] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.magic_missile,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..24] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.trapper,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.duplicator,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.wither_storm,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:helper/token/cancel_ability
