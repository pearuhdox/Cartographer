#Loops every half second.

#Tag a tokened enemy to attack. Tag only 1 enemy every half second.
execute unless score $hook_check ca.hooked matches 1.. if score $tokened_total ca.tokens matches 1.. as @e[type=#bb:hostile,tag=ca.has_active,tag=tokened,tag=avail_target,tag=!attacking,scores={cooldown=0},limit=1,sort=random] at @s run tag @s add attacking

#Else condition to block Hookshot if hook is active
execute if score $hook_check ca.hooked matches 1.. if score $tokened_total ca.tokens matches 1.. as @e[type=#bb:hostile,tag=ca.has_active,tag=!ca.hookshot,tag=tokened,tag=avail_target,tag=!attacking,scores={cooldown=0},limit=1,sort=random] at @s run tag @s add attacking

#Run all entity effects
execute as @e[type=!#cartographer_core:not_tracked] at @s run function cartographer_mob_abilities:loop/half_second/entities