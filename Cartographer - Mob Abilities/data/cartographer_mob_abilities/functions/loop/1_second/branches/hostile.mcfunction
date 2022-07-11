#Run all actives
execute if entity @s[tag=avail_target] as @s[type=#bb:hostile,tag=ca.has_active,tag=attacking,scores={cooldown=0}] at @s run function cartographer_mob_abilities:loop/1_second/run_actives
execute unless entity @s[tag=avail_target] as @s[type=#bb:hostile,tag=ca.has_active,tag=attacking,scores={cooldown=0}] at @s run function cartographer_mob_abilities:loop/1_second/cancel_actives

#Reduce Cooldowns on all enemies with cooldowns.
scoreboard players remove @s[tag=ca.has_active,scores={cooldown=1..}] cooldown 1

#Stack Manager
execute as @s[scores={brutal_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager
execute as @s[scores={relent_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager
execute as @s[scores={devious_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager
execute as @s[scores={sacrifice_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager

#Reset near player check
tag @s remove avail_target

execute as @s[tag=tokened] at @s run function cartographer_mob_abilities:loop/1_second/branches/tokened

#Tick down particle display time for Augmenter
scoreboard players remove @s[scores={augment_time=1..}] augment_time 1

#Tick down duplicator copy cooldown. Remove duplicates
execute if entity @s[tag=duplicate,scores={cooldown=0}] run playsound minecraft:entity.shulker_bullet.hit hostile @a[distance=..12] ~ ~ ~ 1 2
execute if entity @s[tag=duplicate,scores={cooldown=0}] run particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0.05 30 normal
execute if entity @s[tag=duplicate,scores={cooldown=0}] run tp @s ~ -60 ~