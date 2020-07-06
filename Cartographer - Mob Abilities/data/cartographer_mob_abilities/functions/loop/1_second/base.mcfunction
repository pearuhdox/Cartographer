#Loops every second

#Trigger all second timer attacks where enemies have been tokened.

#Charge
execute if entity @e[tag=charge,tag=tokened,scores={cooldown=0}] run execute as @e[tag=charge,tag=tokened,scores={cooldown=0}] at @s run execute if entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:charge/charge

#Flame Nova
execute if entity @e[tag=flame_nova,tag=tokened,scores={cooldown=0}] run execute as @e[tag=flame_nova,tag=tokened,scores={cooldown=0}] at @s run execute if entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:charge/flame_nova

#Frost Nova
execute if entity @e[tag=frost_nova,tag=tokened,scores={cooldown=0}] run execute as @e[tag=frost_nova,tag=tokened,scores={cooldown=0}] at @s run execute if entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:charge/frost_nova

#Venom Nova
execute if entity @e[tag=venom_nova,tag=tokened,scores={cooldown=0}] run execute as @e[tag=venom_nova,tag=tokened,scores={cooldown=0}] at @s run execute if entity @a[gamemode=survival,distance=..16] run function cartographer_mob_abilities:charge/venom_nova

#Ambush
execute if entity @e[tag=ambush,tag=tokened,scores={cooldown=0}] run execute as @e[tag=ambush,tag=tokened,scores={cooldown=0}] at @s run execute if entity @a[gamemode=survival,distance=..25] run function cartographer_mob_abilities:charge/ambush

#Healer
execute if entity @e[tag=healer,tag=tokened,scores={cooldown=0}] run execute as @e[tag=healer,tag=tokened,scores={cooldown=0}] at @s run execute if entity @a[gamemode=survival,distance=..25] run function cartographer_mob_abilities:charge/healer

#Augmenter
execute if entity @e[tag=augmenter,tag=tokened,scores={cooldown=0}] run execute as @e[tag=augmenter,tag=tokened,scores={cooldown=0}] at @s run execute if entity @a[gamemode=survival,distance=..25] run function cartographer_mob_abilities:charge/augmenter

#Hookshot
execute if entity @e[tag=hookshot,tag=tokened,scores={cooldown=0}] run execute as @e[tag=hookshot,tag=tokened,scores={cooldown=0}] at @s run execute if entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:charge/hookshot

#Webshot
execute if entity @e[tag=webshot,tag=tokened,scores={cooldown=0}] run execute as @e[tag=webshot,tag=tokened,scores={cooldown=0}] at @s run execute if entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:charge/webshot

#Disarm
execute if entity @e[tag=disarm,tag=tokened,scores={cooldown=0}] run execute as @e[tag=disarm,tag=tokened,scores={cooldown=0}] at @s run execute if entity @a[gamemode=survival,distance=..8] run function cartographer_mob_abilities:charge/disarm

#Smash
execute if entity @e[tag=smash,tag=tokened,scores={cooldown=0}] run execute as @e[tag=smash,tag=tokened,scores={cooldown=0}] at @s run execute if entity @a[gamemode=survival,distance=..15] run function cartographer_mob_abilities:charge/smash

#Sweep
execute if entity @e[tag=sweep,tag=tokened,scores={cooldown=0}] run execute as @e[tag=sweep,tag=tokened,scores={cooldown=0}] at @s run execute if entity @a[gamemode=survival,distance=..12] run function cartographer_mob_abilities:charge/sweep

#Magic Missile
execute if entity @e[tag=magic_missile,tag=tokened,scores={cooldown=0}] run execute as @e[tag=magic_missile,tag=tokened,scores={cooldown=0}] at @s run execute if entity @a[gamemode=survival,distance=..24] run function cartographer_mob_abilities:charge/magic_missile_cast

#Duplicate
execute if entity @e[tag=duplicator,tag=tokened,scores={cooldown=0}] run execute as @e[tag=duplicator,tag=tokened,scores={cooldown=0}] at @s run execute if entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:charge/duplicator

execute if entity @e[tag=duplicate,scores={cooldown=0}] run execute as @e[tag=duplicate,scores={cooldown=0}] at @s run tp @s ~ -60 ~

#Traps will be reserved for 1.16 and new spreadplayers

#Fireball will be reserved for 1.16

#Reduce Cooldowns on all enemies with cooldowns.
scoreboard players remove @e[tag=has_active,scores={cooldown=1..}] cooldown 1

#Run 1 Second Passives: (Reflect)
execute if entity @e[tag=reflect_ranged] run execute as @e[tag=reflect_ranged] at @s run function cartographer_mob_abilities:passive/reflect
execute if entity @e[tag=reflect_melee] run execute as @e[tag=reflect_melee] at @s run function cartographer_mob_abilities:passive/reflect

#Give players tokens back.
execute as @a at @s run function cartographer_mob_abilities:token/token_player

schedule function cartographer_mob_abilities:loop/1_second/base 1s