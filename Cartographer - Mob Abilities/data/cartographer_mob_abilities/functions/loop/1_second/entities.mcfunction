#All looping effects that are entity calls (1 seconds)

#Reset near player check
tag @s remove avail_target

#Run all actives
execute as @s[type=#cartographer_core:hostile,tag=ca.has_active,tag=attacking,scores={cooldown=0}] at @s run function cartographer_mob_abilities:loop/1_second/run_actives

#Reduce Cooldowns on all enemies with cooldowns.
scoreboard players remove @s[tag=ca.has_active,scores={cooldown=1..}] cooldown 1

#Run Stack Manager for Blood Stacks
execute as @s[scores={brutal_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager
execute as @s[scores={relent_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager
execute as @s[scores={devious_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager
execute as @s[scores={sacrifice_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager

#Add lifetime to ability markers. Kill them if they are too old. Remove old Invulnerable notices.
execute as @s[type=armor_stand,tag=ability_marker] run function cartographer_mob_abilities:loop/1_second/ability_marker_branch
execute as @s[type=armor_stand,tag=invulnerable_notice] at @s run function cartographer_mob_abilities:passive/purge_notices

#Check if mobs with abilities have needed players in range.
execute if entity @s[tag=ca.charge,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..16] run tag @s add avail_target
execute if entity @s[tag=ca.nova,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..16] run tag @s add avail_target
execute if entity @s[tag=ca.ambush,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..25] run tag @s add avail_target
execute if entity @s[tag=ca.healer,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..25] run tag @s add avail_target
execute if entity @s[tag=ca.augmenter,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..25] run tag @s add avail_target
execute if entity @s[tag=ca.cloaker,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..25] run tag @s add avail_target
execute if entity @s[tag=ca.hookshot,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run tag @s add avail_target
execute if entity @s[tag=ca.needle,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..18] run tag @s add avail_target
execute if entity @s[tag=ca.rift,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..18] run tag @s add avail_target
execute if entity @s[tag=ca.webshot,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run tag @s add avail_target
execute if entity @s[tag=ca.disarm,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..8] run tag @s add avail_target
execute if entity @s[tag=ca.smash,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..15] run tag @s add avail_target
execute if entity @s[tag=ca.sweep,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..12] run tag @s add avail_target
execute if entity @s[tag=ca.magic_missile,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..24] run tag @s add avail_target
execute if entity @s[tag=ca.trapper,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run tag @s add avail_target
execute if entity @s[tag=ca.duplicator,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run tag @s add avail_target
execute if entity @s[tag=ca.wither_storm,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..25] run tag @s add avail_target
execute if entity @s[tag=ca.grenadier,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..16] run tag @s add avail_target

#Exalted Weapon Despawning
scoreboard players add @s[type=armor_stand,tag=exalted_weapon] exalted 1
execute if score @s[type=armor_stand,tag=exalted_weapon] exalted matches 16.. run playsound minecraft:block.bell.use hostile @a[distance=..12] ~ ~ ~ 0.1 2
execute if score @s[type=armor_stand,tag=exalted_weapon] exalted matches 16.. run playsound minecraft:entity.player.levelup hostile @a[distance=..12] ~ ~ ~ 0.5 2
execute if score @s[type=armor_stand,tag=exalted_weapon] exalted matches 16.. run particle minecraft:cloud ~ ~1 ~ 0.1 0.5 0.1 0.1 20 normal
execute if score @s[type=armor_stand,tag=exalted_weapon] exalted matches 16.. run kill @s

#Tick down particle display time for Augmenter
scoreboard players remove @s[scores={augment_time=1..}] augment_time 1


#Tick down duplicator copy cooldown. Remove duplicates
execute if entity @s[tag=duplicate,scores={cooldown=0}] run playsound minecraft:entity.shulker_bullet.hit hostile @a[distance=..12] ~ ~ ~ 1 2
execute if entity @s[tag=duplicate,scores={cooldown=0}] run particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0.05 30 normal
execute if entity @s[tag=duplicate,scores={cooldown=0}] run tp @s ~ -60 ~