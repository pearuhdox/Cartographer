#Sets health value equal to the health of the mob * 100
#Scales up the damage amount by 100
execute as @s store result score @s helper_health run data get entity @s Health 100
scoreboard players operation @s damage_queue *= $core.100x ca.CONSTANT

#Add the Absorption of the mob to the check.
execute as @s store result score @s helper_abs run data get entity @s AbsorptionAmount 100
scoreboard players operation @s helper_health += @s helper_abs

#Check if the damage kills or overkills the mob. Run a /kill command if it does.
scoreboard players operation @s helper_health -= @s damage_queue
execute if entity @s[scores={helper_health=..0}] run kill @s

#Else, return the health equal to removing the health of the mob minus the damage. Take from Absorption first.
execute as @s store result score @s helper_health run data get entity @s Health 100
execute as @s store result score @s helper_abs run data get entity @s AbsorptionAmount 100

#Set a tag to block ALL effects if the entity has Resistance 5.
execute if entity @s[nbt={ActiveEffects:[{Id:11b,Amplifier:4b}]}] at @s run tag @s add invulnerable_check

#Get the amount of damage we reduce from Absorption
execute as @s unless entity @s[tag=invulnerable_check] run scoreboard players operation @s helper_abs -= @s damage_queue
execute as @s unless entity @s[tag=invulnerable_check] if entity @s[scores={helper_abs=0..}] run tag @s add absorbed
execute as @s unless entity @s[tag=invulnerable_check] if entity @s[scores={helper_abs=..-1}] run tag @s add not_absorbed

execute as @s unless entity @s[tag=invulnerable_check] if entity @s[tag=absorbed] store result score @s helper_abs run data get entity @s AbsorptionAmount 100
execute as @s unless entity @s[tag=invulnerable_check] if entity @s[tag=absorbed] store result entity @s AbsorptionAmount float 0.01 run scoreboard players operation @s helper_abs -= @s damage_queue

execute as @s unless entity @s[tag=invulnerable_check] if entity @s[tag=not_absorbed] run scoreboard players operation @s helper_abs *= $core.negative_1 ca.CONSTANT
execute as @s unless entity @s[tag=invulnerable_check] if entity @s[tag=not_absorbed] run data modify entity @s AbsorptionAmount set value 0
execute as @s unless entity @s[tag=invulnerable_check] if entity @s[tag=not_absorbed] store result entity @s Health float 0.01 run scoreboard players operation @s helper_health -= @s helper_abs

#Set damage queue to 0. The damage has been done.
scoreboard players set @s damage_queue 0
tag @s remove absorbed
tag @s remove not_absorbed
tag @s remove invulnerable_check