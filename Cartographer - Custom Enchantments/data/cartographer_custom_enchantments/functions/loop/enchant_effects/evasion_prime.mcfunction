function cartographer_core:helper/randomize

scoreboard players operation @s helper_evade = @s random
scoreboard players operation @s helper_evade -= @s evasion_bias

scoreboard players set @s[scores={helper_evade=..0}] helper_evade 1

execute if entity @s[scores={evasion=1,helper_evade=1..5}] run tag @s add evading

execute if entity @s[scores={evasion=2,helper_evade=1..10}] run tag @s add evading

execute if entity @s[scores={evasion=3,helper_evade=1..15}] run tag @s add evading

execute if entity @s[scores={evasion=4,helper_evade=1..20}] run tag @s add evading

execute if entity @s[scores={evasion=5,helper_evade=1..25}] run tag @s add evading

execute if entity @s[scores={evasion=6,helper_evade=1..30}] run tag @s add evading

execute if entity @s[scores={evasion=7,helper_evade=1..35}] run tag @s add evading

execute if entity @s[scores={evasion=8,helper_evade=1..40}] run tag @s add evading

execute if entity @s[scores={evasion=9,helper_evade=1..45}] run tag @s add evading

execute if entity @s[scores={evasion=10,helper_evade=1..50}] run tag @s add evading

execute unless entity @s[tag=evading] run scoreboard players add @s evasion_bias 5
execute unless entity @s[tag=evading] run scoreboard players set @s[scores={evasion_bias=30..}] evasion_bias 30
execute if entity @s[tag=evading] run scoreboard players set @s evasion_bias 0

# Second Wind Dramatic Trigger
# Take the amount the player was damaged for.
# Scale it down by a factor of 10.

execute if entity @s[scores={second_wind=1..,second_wind_cool=11..}] run scoreboard players operation @s second_wind_test = @s helper_damaged

execute if entity @s[scores={second_wind=1..,second_wind_cool=11..}] run scoreboard players operation @s second_wind_test /= SecondWindHelper second_wind
# Subtract health of the player from it.
execute if entity @s[scores={second_wind=1..,second_wind_cool=11..}] run scoreboard players operation @s second_wind_test -= @s player_health
# If the value is greater than or equal to zero, this means that the player does not have enough health to take an attack from that enemy again.
# When this happens, we consider it a "lethal attack". Thus if the player has Second Wind, we prime Evasion regardless of chance.
execute if entity @s[scores={second_wind=1..,second_wind_test=0..,second_wind_cool=11..}] run tag @s add evading
execute if entity @s[scores={second_wind=1..,second_wind_test=0..,second_wind_cool=11..}] run tag @s add bracing

execute if entity @s[scores={second_wind=1..,second_wind_cool=11..}] run scoreboard players operation @s second_wind_test = @s helper_damaged

#If the Second Wind user's health is 4 or less, we will also consider the next attack as lethal.
execute if entity @s[scores={second_wind=1..,player_health=1..4,second_wind_cool=11..}] run tag @s add evading
execute if entity @s[scores={second_wind=1..,player_health=1..4,second_wind_cool=11..}] run tag @s add bracing