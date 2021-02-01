#Loops every second

#Trigger all second timer attacks where enemies have been tokened.

#Set the score of helper difficulty equal to Minecraft's current difficulty
execute if score $cart_ind_diff global_options matches 0 run execute store result score @a helper_diff run difficulty

#Run all actives
execute as @e[type=#cartographer_core:hostile,tag=tokened,scores={cooldown=0}] at @s run function cartographer_mob_abilities:loop/1_second/run_actives

#Reduce Cooldowns on all enemies with cooldowns.
#Reduce Cloak stacks on all enemies with cooldowns.
scoreboard players remove @e[tag=has_active,scores={cooldown=1..}] cooldown 1

#Run 1 Second Passives: (Reflect)
execute as @e[tag=reflect_ranged] at @s run function cartographer_mob_abilities:passive/reflect
execute as @e[tag=reflect_melee] at @s run function cartographer_mob_abilities:passive/reflect

#Give players tokens back.
execute as @a at @s run function cartographer_mob_abilities:token/token_player

schedule function cartographer_mob_abilities:loop/1_second/base 1s

#Run Stack Manager for Brutal and Relentless Stacks
execute as @e[scores={brutal_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager
execute as @e[scores={relent_stacks=1..}] run function cartographer_mob_abilities:passive/stack_manager

#Remove Hookshot tag from mob
execute as @e[tag=is_hooking,scores={cooldown=6}] at @s run tag @s remove is_hooking

#Add lifetime to ability markers. Kill them if they are too old. Remove old Invulnerable notices.
execute as @e[type=armor_stand,tag=ability_marker] run function cartographer_mob_abilities:loop/1_second/ability_marker_branch
execute as @e[type=armor_stand,tag=invulnerable_notice] at @s run function cartographer_mob_abilities:passive/purge_notices