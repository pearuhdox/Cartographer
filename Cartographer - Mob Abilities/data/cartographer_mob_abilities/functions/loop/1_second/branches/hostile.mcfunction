execute unless score @s[tag=ca.has_active] ability_charge matches -1.. run scoreboard players set @s ability_charge 0
execute unless score @s[tag=ca.shrieker] ability_charge matches -1.. run scoreboard players set @s ability_charge 0

#Run all actives
execute if entity @s[tag=avail_target] as @s[type=#bb:hostile,tag=ca.has_active,tag=attacking,scores={cooldown=0}] at @s run function cartographer_mob_abilities:loop/1_second/run_actives
execute unless entity @s[tag=avail_target] as @s[type=#bb:hostile,tag=ca.has_active,tag=attacking,scores={cooldown=0}] at @s run function cartographer_mob_abilities:loop/1_second/cancel_actives

#Run Acrobat Passive
execute if entity @s[tag=ca.acrobatic_passive] unless score @s ca.acrobat_passive_cooldown matches 1.. run function cartographer_mob_abilities:ability_traits/acrobatic/passive/chance
execute if entity @s[tag=ca.acrobatic] if score @s ca.acrobatic_cooldown matches 1.. run scoreboard players remove @s ca.acrobatic_cooldown 1

#Reduce Cooldowns on all enemies with cooldowns.
scoreboard players remove @s[tag=ca.has_active,scores={cooldown=1..}] cooldown 1
scoreboard players remove @s[tag=ca.acrobatic_passive,scores={ca.acrobat_passive_cooldown=1..}] ca.acrobat_passive_cooldown 1

#Stack Manager
execute as @s[tag=!ca.stacks_managed,scores={brutal_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager
execute as @s[tag=!ca.stacks_managed,scores={relent_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager
execute as @s[tag=!ca.stacks_managed,scores={devious_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager
execute as @s[tag=!ca.stacks_managed,scores={sacrifice_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager

tag @s remove ca.stacks_managed

#Reset near player check
tag @s remove avail_target

execute as @s[tag=tokened] at @s run function cartographer_mob_abilities:loop/1_second/branches/tokened

#Tick down particle display time for Augmenter
execute if score @s augment_time matches 1.. run function cartographer_mob_abilities:ability_traits/trait_warnings/augmented_mob
scoreboard players remove @s[scores={augment_time=1..}] augment_time 1

#Tick down duplicator copy cooldown. Remove duplicates
execute if entity @s[tag=duplicate,scores={cooldown=0}] run playsound minecraft:entity.shulker_bullet.hit hostile @a[distance=..12] ~ ~ ~ 1 2
execute if entity @s[tag=duplicate,scores={cooldown=0}] run particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0.05 30 normal
execute if entity @s[tag=duplicate,scores={cooldown=0}] run tp @s ~ -60 ~