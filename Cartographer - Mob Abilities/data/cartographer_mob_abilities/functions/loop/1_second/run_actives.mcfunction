#Start by running Pre-Acrobatic effects
execute if entity @s[tag=ca.acrobatic,tag=!ca.command,tag=tokened,tag=!ca.has_kited,tag=!ca.has_gap_closed,tag=!ca.has_strafed,tag=!ca.has_retreated,scores={cooldown=0}] run function cartographer_mob_abilities:ability_traits/acrobatic/run_effects/call_all_pre_ability


#Nova - No Pulse Tag
execute if entity @s[tag=ca.nova,tag=!ca.pulse,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:charge/nova

#Ambush
execute if entity @s[tag=ca.ambush,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:charge/ambush

#Cloaker
execute if entity @s[tag=ca.command,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/command

#Hookshot
execute if entity @s[tag=ca.hookshot,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/hookshot

#Smash
execute if entity @s[type=!blaze,tag=ca.smash,tag=tokened,tag=!leaping,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/smash
execute if entity @s[type=blaze,tag=ca.smash,tag=tokened,tag=!leaping,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/smash/blaze

#Disarm
execute if entity @s[tag=ca.orbit,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:charge/orbit

#Magic Missile
execute if entity @s[tag=ca.magic_missile,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..24] run function cartographer_mob_abilities:charge/magic_missile

#Trapper
execute if entity @s[tag=ca.trapper,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/trapper

#Duplicate
execute if entity @s[tag=ca.duplicator,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/duplicator

#Grenadier
execute if entity @s[tag=ca.grenadier,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:charge/grenadier

#Haunt
execute if entity @s[tag=ca.haunt,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/haunt
