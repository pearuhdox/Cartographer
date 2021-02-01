#Charge
execute if entity @s[tag=charge,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:charge/charge

#Flame Nova
execute if entity @s[tag=flame_nova,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:charge/flame_nova

#Frost Nova
execute if entity @s[tag=frost_nova,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:charge/frost_nova

#Venom Nova
execute if entity @s[tag=venom_nova,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:charge/venom_nova

#Wind Nova
execute if entity @s[tag=wind_nova,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:charge/wind_nova

#Soulfire Nova
execute if entity @s[tag=soulfire_nova,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:charge/soulfire_nova

#Ambush
execute if entity @s[tag=ambush,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..25] run function cartographer_mob_abilities:charge/ambush

#Healer
execute if entity @s[tag=healer,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..25] run function cartographer_mob_abilities:charge/healer

#Augmenter
execute if entity @s[tag=augmenter,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..25] run function cartographer_mob_abilities:charge/augmenter

#Cloaker
execute if entity @s[tag=cloaker,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..25] run function cartographer_mob_abilities:charge/cloaker

#Hookshot
execute if entity @s[tag=hookshot,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:charge/hookshot

#Webshot
execute if entity @s[tag=webshot,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:charge/webshot

#Disarm
execute if entity @s[tag=disarm,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..8] run function cartographer_mob_abilities:charge/disarm

#Smash
execute if entity @s[tag=smash,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..15] run function cartographer_mob_abilities:charge/smash

#Sweep
execute if entity @s[tag=sweep,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..12] run function cartographer_mob_abilities:charge/sweep

#Magic Missile
execute if entity @s[tag=magic_missile,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..24] run function cartographer_mob_abilities:charge/magic_missile_cast

#Fireball
execute if entity @s[tag=fireball,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..24] run function cartographer_mob_abilities:charge/fireball_cast

#Wither Storm
execute if entity @s[tag=wither_storm,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..25] run function cartographer_mob_abilities:charge/wither_storm

#Trapper
execute if entity @s[tag=trapper,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:charge/trapper_cast

#Duplicate
execute if entity @s[tag=duplicator,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:charge/duplicator

execute if entity @s[tag=duplicate,scores={cooldown=0}] run tp @s ~ -60 ~

#Run Ability Canceling
execute if entity @s[tag=charge,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=flame_nova,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=frost_nova,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=venom_nova,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=soulfire_nova,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=ambush,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..25] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=healer,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..25] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=augmenter,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..25] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=cloaker,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..25] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=hookshot,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=webshot,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=disarm,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..8] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=smash,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..15] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=sweep,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..12] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=magic_missile,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..24] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=fireball,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..24] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=trapper,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=duplicator,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:token/cancel_ability
execute if entity @s[tag=wither_storm,tag=tokened,scores={cooldown=0}] run execute unless entity @a[gamemode=survival,distance=..25] run function cartographer_mob_abilities:token/cancel_ability
