execute unless score @s[tag=ca.has_active] ability_charge matches -1.. run scoreboard players set @s ability_charge 0
execute unless score @s[tag=ca.shrieker] ability_charge matches -1.. run scoreboard players set @s ability_charge 0

#Run Acrobat Passive
execute if entity @s[tag=ca.acro_pass] unless score @s ca.acrobat_passive_cooldown matches 1.. unless score @s ca.effect_stun_duration matches 1.. run function cartographer_mob_abilities:ability_traits/acrobatic/passive/chance

#Run Trigger Trait Passive
execute if entity @s[tag=ca.trigger_traits] unless score @s ability_charge matches 1.. unless score @s ca.trigger_trait_cooldown matches 1.. if entity @a[distance=..32,gamemode=!creative,gamemode=!spectator] run function cartographer_mob_abilities:passive/trigger_trait/chance
execute if entity @s[tag=ca.trigger_traits] if score @s ca.trigger_trait_cooldown matches 1.. run scoreboard players remove @s ca.trigger_trait_cooldown 1

#Reduce Cooldowns on all enemies with cooldowns.
scoreboard players remove @s[tag=ca.has_active,scores={cooldown=1..}] cooldown 1
scoreboard players remove @s[tag=ca.acro_pass,scores={ca.acrobat_passive_cooldown=1..}] ca.acrobat_passive_cooldown 1

#Stack Manager
execute as @s[tag=!ca.stacks_managed,scores={ca.brutal_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager
execute as @s[tag=!ca.stacks_managed,scores={ca.relent_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager
execute as @s[tag=!ca.stacks_managed,scores={ca.sacrifice_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager

tag @s remove ca.stacks_managed


#Run Ride Traits
execute if entity @s[tag=ca.mount] run function cartographer_mob_abilities:passive/ride/mount
execute if entity @s[tag=ca.pickup] run function cartographer_mob_abilities:passive/ride/pickup

#Tick down particle display time for Augmenter
execute if score @s augment_time matches 1.. run function cartographer_mob_abilities:ability_traits/trait_warnings/augmented_mob
scoreboard players remove @s[scores={augment_time=1..}] augment_time 1

#Tick down duplicator copy cooldown. Remove duplicates
execute if entity @s[tag=ca.duplicate,scores={cooldown=0}] run playsound minecraft:entity.shulker_bullet.hit hostile @a[distance=..12] ~ ~ ~ 1 2
execute if entity @s[tag=ca.duplicate,scores={cooldown=0}] run particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0.05 30 normal
execute if entity @s[tag=ca.duplicate,scores={cooldown=0}] run tp @s ~ -256 ~

#Run Passive (Trail)
execute as @s[tag=ca.trail] at @s run function cartographer_mob_abilities:passive/trail/test

#Run Passive (Aura)
execute as @s[tag=ca.aura] at @s run function cartographer_mob_abilities:passive/aura/test


#Run Cleanse
execute as @s[tag=ca.cleanse_debuffs] run function cartographer_mob_abilities:passive/cleanse/debuffs
execute as @s[tag=ca.cleanse_statuses] run function cartographer_mob_abilities:passive/cleanse/statuses