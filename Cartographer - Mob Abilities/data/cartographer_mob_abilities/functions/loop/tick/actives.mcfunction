#Line of Sight Check
execute if entity @s[type=#bb:hostile,tag=ca.has_active,tag=!los_checked,scores={cooldown=0..2}] if entity @a[distance=..40] run scoreboard players set $do_los flag 1


#Run Smash Land Effect
execute if entity @s[tag=ca.smash] run function cartographer_mob_abilities:loop/tick/smash_branch
execute if entity @s[type=blaze,tag=ca.airborne_slam_waiting,tag=ca.smash] run function cartographer_mob_abilities:abilities/smash/slam/move_down

#Run Pre Ability Traits
execute if entity @s[tag=ca.acrobatic,tag=!ca.command,tag=tokened,tag=!ca.has_kited,tag=!ca.has_gap_closed,tag=!ca.has_strafed,tag=!ca.has_retreated,scores={cooldown=0}] run function cartographer_mob_abilities:ability_traits/acrobatic/run_effects/call_all_pre_ability

#Run Abilities unless on Acro Cooldown
execute unless score @s ca.acro_cooldown matches 1.. unless score @s ability_pause matches 1.. if entity @s[tag=attacking] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..32] run function cartographer_mob_abilities:loop/tick/do_actives

execute unless score @s ca.acro_cooldown matches 1.. if score @s ability_pause matches 1.. run scoreboard players remove @s ability_pause 1
execute if entity @s[tag=ca.acrobatic] if score @s ca.acro_cooldown matches 1.. run scoreboard players remove @s ca.acro_cooldown 1

#Attempt Cancels
function cartographer_mob_abilities:loop/tick/cancel_actives

#Run Sidearm outside of casting
execute if entity @s[tag=ca.sidearm,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..12] run function cartographer_mob_abilities:animations/sidearm

#Attack Override Run
execute if entity @s[tag=ca.attack_override] run function cartographer_mob_abilities:helper/attack_override
execute if entity @s[tag=ca.attack_override_soft] run function cartographer_mob_abilities:helper/attack_override_soft

#Fix Tags
execute if entity @s[tag=!ability_checked,tag=!ca.duplicate] run function cartographer_mob_abilities:passive/ability_fix