#Run Smash Land Effect
execute if entity @s[tag=ca.smash] run function cartographer_mob_abilities:loop/tick/smash_branch
execute if entity @s[type=blaze,tag=ca.airborne_slam_waiting,tag=ca.smash] run function cartographer_mob_abilities:abilities/smash/slam/move_down

#Run Sweep and Quickdraw Warning
execute if entity @s[tag=ca.sweep,tag=tokened,tag=!warned,scores={cooldown=0}] run function cartographer_mob_abilities:loop/tick/fast_attack_warning
execute if entity @s[tag=ca.quickdraw,tag=tokened,tag=!warned,scores={cooldown=0}] run function cartographer_mob_abilities:loop/tick/fast_attack_warning

#Run Pre Ability Traits
execute if entity @s[tag=ca.acrobatic,tag=!ca.command,tag=tokened,tag=!ca.has_kited,tag=!ca.has_gap_closed,tag=!ca.has_strafed,tag=!ca.has_retreated,scores={cooldown=0}] run function cartographer_mob_abilities:ability_traits/acrobatic/run_effects/call_all_pre_ability



#Laser
execute unless score @s ca.acrobatic_cooldown matches 1.. if entity @s[tag=ca.laser,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..32] run function cartographer_mob_abilities:charge/laser

#Laser Animation Cancel
execute if entity @s[tag=ca.laser,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..32] run function cartographer_mob_abilities:helper/token/cancel_ability

#Run Barrage Channeling Here
execute unless score @s ca.acrobatic_cooldown matches 1.. if entity @s[tag=ca.barrage,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:charge/barrage

#Barrage Animation Cancel
execute if entity @s[tag=ca.barrage,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:helper/token/cancel_ability

#Sniper Shot
execute unless score @s ca.acrobatic_cooldown matches 1.. if entity @s[tag=ca.sniper_shot,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..24] run function cartographer_mob_abilities:charge/sniper_shot

#Run Sniper Shot Channeling Here
execute if entity @s[tag=ca.sniper_shot,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..24] run function cartographer_mob_abilities:helper/token/cancel_ability

#Sidearm Channeling Here
execute if entity @s[tag=ca.sidearm,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..12] run function cartographer_mob_abilities:charge/sidearm

#Run Sidearm Channeling Here
execute if entity @s[tag=ca.sidearm,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..12] run function cartographer_mob_abilities:helper/token/cancel_ability

#Fix Tags
execute if entity @s[tag=!ability_checked,tag=!duplicate] run function cartographer_mob_abilities:passive/ability_fix

execute if entity @s[type=#bb:hostile,tag=ca.has_active,tag=!los_checked,scores={cooldown=0..2}] if entity @a[distance=..40] run scoreboard players set $do_los flag 1