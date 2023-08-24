#Loops every second
execute as @a at @s run function cartographer_mob_abilities:loop/1_second/player

#Teleport our LoS checking UUID set armor stand back to the force loaded chunk.
tp 002f80c0-0001-f879-0000-009c001e7bfc 4206900 180 4206900

scoreboard players add $timer ca.tokens 1

execute if score $timer ca.tokens >= $cooldown ca.tokens run function cartographer_mob_abilities:loop/1_second/branches/token_recharge