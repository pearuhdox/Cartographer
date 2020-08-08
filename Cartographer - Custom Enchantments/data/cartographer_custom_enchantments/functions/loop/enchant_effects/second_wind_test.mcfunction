#Check if the player's health compared to the last damage taken. If that score is no longer accurate, then remove Evasion proc.

#This does not run if the player in question is 4 health or less.

#Save our original check first
scoreboard players operation @s second_wind_save = @s second_wind_test

scoreboard players operation @s second_wind_test /= SecondWindHelper second_wind
# Subtract health of the player from it.
scoreboard players operation @s second_wind_test -= @s player_health
# If the value is greater than or equal to zero, this means that the player does not have enough health to take an attack from that enemy again.
# When this happens, we consider it a "lethal attack". Thus if the player has Second Wind, we prime Evasion regardless of chance.
execute if entity @s[scores={second_wind_test=..0}] run tag @s remove evading
execute if entity @s[scores={second_wind_test=..0}] run tag @s remove bracing
#execute if entity @s[scores={second_wind_test=..0}] run say no longer bracing!

scoreboard players operation @s second_wind_test = @s second_wind_save