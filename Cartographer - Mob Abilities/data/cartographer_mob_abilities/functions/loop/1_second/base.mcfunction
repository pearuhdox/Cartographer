#Loops every second

#Out of combat check! If the player has been out of combat for a very extended time, we reset their tokens.
#execute as @a[tag=no_near_mobs] at @s if entity @e[type=#bb:hostile,distance=..30] run tag @s remove no_near_mobs
tag @a remove no_near_mobs
execute as @a[tag=!no_near_mobs] at @s unless entity @e[type=#bb:hostile,distance=..30] run function cartographer_mob_abilities:loop/1_second/out_combat_tag

#Teleport our LoS checking UUID set armor stand back to the force loaded chunk.
tp 002f80c0-0001-f879-0000-009c001e7bfc 4206900 180 4206900

scoreboard players add $timer ca.tokens 1

execute if score $timer ca.tokens >= $cooldown ca.tokens run function cartographer_mob_abilities:loop/1_second/branches/token_recharge