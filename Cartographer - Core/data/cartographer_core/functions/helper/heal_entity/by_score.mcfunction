#Sets health value equal to the health of the mob * 100
#Scales up the damage amount by 100
execute as @s store result score @s helper_health run data get entity @s Health 100
scoreboard players operation @s heal_queue *= $100 ca.CONSTANT

#Heal the mob
execute store result entity @s Health float 0.01 run scoreboard players operation @s helper_health += @s heal_queue

#Set heal queue to 0.
scoreboard players set @s heal_queue 0