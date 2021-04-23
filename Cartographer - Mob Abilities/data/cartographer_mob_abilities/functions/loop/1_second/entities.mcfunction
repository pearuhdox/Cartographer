#All looping effects that are entity calls (1 seconds)

#Reset near player check
tag @s remove avail_target

#Run all actives
execute as @s[type=#cartographer_core:hostile,tag=has_active,tag=attacking,scores={cooldown=0}] at @s run function cartographer_mob_abilities:loop/1_second/run_actives

#Reduce Cooldowns on all enemies with cooldowns.
scoreboard players remove @s[tag=has_active,scores={cooldown=1..}] cooldown 1

#Run 1 Second Passives: (Reflect)
execute as @s[tag=reflect_ranged] at @s run function cartographer_mob_abilities:passive/reflect
execute as @s[tag=reflect_active] at @s run function cartographer_mob_abilities:passive/reflect

#Run Stack Manager for Brutal and Relentless Stacks
execute as @s[scores={brutal_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager
execute as @s[scores={relent_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager

#Add lifetime to ability markers. Kill them if they are too old. Remove old Invulnerable notices.
execute as @s[type=armor_stand,tag=ability_marker] run function cartographer_mob_abilities:loop/1_second/ability_marker_branch
execute as @s[type=armor_stand,tag=invulnerable_notice] at @s run function cartographer_mob_abilities:passive/purge_notices

#Check if mobs with abilities have needed players in range.
execute if entity @s[tag=charge,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..16] run tag @s add avail_target
execute if entity @s[tag=flame_nova,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..16] run tag @s add avail_target
execute if entity @s[tag=frost_nova,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..16] run tag @s add avail_target
execute if entity @s[tag=venom_nova,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..16] run tag @s add avail_target
execute if entity @s[tag=soulfire_nova,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..16] run tag @s add avail_target
execute if entity @s[tag=ambush,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..25] run tag @s add avail_target
execute if entity @s[tag=healer,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..25] run tag @s add avail_target
execute if entity @s[tag=augmenter,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..25] run tag @s add avail_target
execute if entity @s[tag=cloaker,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..25] run tag @s add avail_target
execute if entity @s[tag=hookshot,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..20] run tag @s add avail_target
execute if entity @s[tag=webshot,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..20] run tag @s add avail_target
execute if entity @s[tag=disarm,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..8] run tag @s add avail_target
execute if entity @s[tag=smash,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..15] run tag @s add avail_target
execute if entity @s[tag=sweep,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..12] run tag @s add avail_target
execute if entity @s[tag=magic_missile,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..24] run tag @s add avail_target
execute if entity @s[tag=fireball,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..24] run tag @s add avail_target
execute if entity @s[tag=trapper,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..20] run tag @s add avail_target
execute if entity @s[tag=duplicator,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..20] run tag @s add avail_target
execute if entity @s[tag=wither_storm,tag=tokened,scores={cooldown=0}] run execute if entity @a[gamemode=survival,distance=..25] run tag @s add avail_target