#Tell Cartographer this pack is in use
scoreboard players set $mob_abilities ca.installed 1

#Loop all player effects
execute as @a at @s run function cartographer_mob_abilities:loop/tick/player

#Loop all abilities that need to be played each tick. This includes Laser (active), Hybrid Fighter (NYI), all On-Death Skills, and helper functions for Hookshot.
#This also sets mob tags properly for active skill mobs and on death mobs.

#Set the score of helper difficulty equal to Minecraft's ca.current difficulty
execute if score $gl_ind_diff ca.gamerule matches 0 run scoreboard players operation $global_past helper_diff = $global helper_diff
execute if score $gl_ind_diff ca.gamerule matches 0 store result score $global helper_diff run difficulty

#When you change difficulty, tokens need to be entirely reset.
execute unless score $global_past helper_diff = $global helper_diff run tag @a remove token_reset
execute unless score $global_past helper_diff = $global helper_diff run scoreboard players operation $global_past helper_diff = $global helper_diff

#Do a line of sight check on one mob that *doesn't* have Line of Sight.
execute if score $do_los flag matches 1 as @r[gamemode=!creative,gamemode=!spectator] at @s as @e[type=#bb:hostile,tag=ca.has_active,tag=!los_checked,scores={cooldown=0},limit=1,sort=random,distance=..40] at @s run function cartographer_mob_abilities:helper/los_check/scan

#Unflag the check for needing los
scoreboard players set $do_los flag 0

#reduce 1 on our "check invul mob damage etc etc"
execute if score $invul_time_check invul matches 1.. run scoreboard players remove $invul_time_check invul 1

#Reduce the time of the hook_check dummy score.
execute if score $hook_check ca.hooked matches 1.. run scoreboard players remove $hook_check ca.hooked 1

#Reduce the time of the creeper cloud killer timer by 1
execute if score $block_effects_creeper ca.var matches 1.. run scoreboard players remove $block_effects_creeper ca.var 1
