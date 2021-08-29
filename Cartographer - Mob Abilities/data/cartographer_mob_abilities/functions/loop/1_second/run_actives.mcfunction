tag @s remove avail_target

#Charge
execute if entity @s[tag=charge,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:charge/charge

#Nova
execute if entity @s[tag=nova,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:charge/nova

#Ambush
execute if entity @s[tag=ambush,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:charge/ambush

#Healer
execute if entity @s[tag=healer,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:charge/healer

#Augmenter
execute if entity @s[tag=augmenter,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:charge/augmenter

#Cloaker
execute if entity @s[tag=cloaker,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:charge/cloaker

#Hookshot
execute if entity @s[tag=hookshot,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/hookshot

#Webshot
execute if entity @s[tag=webshot,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/webshot

#Disarm
execute if entity @s[tag=disarm,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..8] run function cartographer_mob_abilities:charge/disarm

#Magic Missile
execute if entity @s[tag=magic_missile,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..24] run function cartographer_mob_abilities:charge/magic_missile

#Wither Storm
execute if entity @s[tag=wither_storm,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:charge/wither_storm

#Trapper
execute if entity @s[tag=trapper,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/trapper

#Duplicate
execute if entity @s[tag=duplicator,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/duplicator

#Run Ability Canceling
execute if entity @s[tag=charge,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=nova,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ambush,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=healer,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=augmenter,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=cloaker,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=hookshot,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=webshot,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=disarm,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..8] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=smash,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..15] run function cartographer_mob_abilities:helper/token/cancel_ability
#execute if entity @s[tag=sweep,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..12] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=magic_missile,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..24] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=trapper,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=duplicator,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=wither_storm,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:helper/token/cancel_ability
