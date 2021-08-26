#Loops every second

#Out of combat check! If the player has been out of combat for a very extended time, we reset their tokens.
execute as @a[tag=no_near_mobs] at @s if entity @e[type=#cartographer_core:hostile,distance=..30] run tag @s remove no_near_mobs
execute as @a[tag=!no_near_mobs] at @s unless entity @e[type=#cartographer_core:hostile,distance=..30] run tag @s add recent_combat
execute as @a[tag=!no_near_mobs] at @s unless entity @e[type=#cartographer_core:hostile,distance=..30] run tag @s add no_near_mobs

#Teleport our LoS checking UUID set armor stand back to the force loaded chunk.
tp 002f80c0-0001-f879-0000-009c001e7bfc 4206900 180 4206900

#Tag a tokened enemy to attack. Tag only 1 enemy every second.
execute unless score $hook_check ca.hooked matches 1.. as @e[type=#cartographer_core:hostile,tag=has_active,tag=tokened,tag=avail_target,tag=!attacking,scores={cooldown=0},limit=1,sort=random] at @s run tag @s add attacking
execute if score $hook_check ca.hooked matches 1.. as @e[type=#cartographer_core:hostile,tag=has_active,tag=!hookshot,tag=tokened,tag=avail_target,tag=!attacking,scores={cooldown=0},limit=1,sort=random] at @s run tag @s add attacking

#Tick down the player's cooldown. At -1, the cooldown swapper is run.
execute as @a if entity @s[scores={cooldown=-99..-9}] run scoreboard players set @s cooldown 0
execute as @a[scores={cooldown=-7..}] at @s run scoreboard players remove @s cooldown 1
execute as @a[scores={cooldown=-1}] at @s run function cartographer_mob_abilities:helper/token/cooldown_swapper
execute as @a[scores={cooldown=-8..-2},tag=!no_near_mobs] at @s run scoreboard players set @s cooldown 0

#Has the player been out of combat for 7 seconds? (No tokens have been refreshed in 6 seconds and no nearby mobs within 30 blocks.)
#After this check, if it was successful, we will check again in 6 seconds.
execute as @a[scores={cooldown=-8},tag=no_near_mobs,tag=recent_combat] at @s run function cartographer_mob_abilities:load/token_reset
execute as @a[scores={cooldown=-8},tag=no_near_mobs,tag=recent_combat] at @s run tag @s remove recent_combat
execute as @a[scores={cooldown=-8},tag=no_near_mobs] at @s run scoreboard players set @s cooldown -1

schedule function cartographer_mob_abilities:loop/1_second/base 1s