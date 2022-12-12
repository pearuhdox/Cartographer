#End Goal - Reset the token count to what it is supposed to be. Run this every 30 seconds if there are no players in combat. This force runs on a /reload.

#Get the player count first:
execute store result score $players ca.tokens run execute if entity @a

#Easy Difficulty aka 1:
#2 Light Token
#1 Heavy Token
#Cooldown - 4 seconds
execute if score $global helper_diff matches 1 run function cartographer_mob_abilities:load/token_reset/easy_param

#Normal Difficulty aka 2:
#3 Light Tokens
#2 Heavy Token
#Cooldown - 3 Seconds
execute if score $global helper_diff matches 2 run function cartographer_mob_abilities:load/token_reset/normal_param

#Hard aka 3:
#4 Light Tokens
#3 Heavy Tokens
#Cooldown - 2 Seconds
execute if score $global helper_diff matches 3 run function cartographer_mob_abilities:load/token_reset/hard_param

#4:
#5 Light Tokens
#3 Heavy Tokens
#Cooldown - 2 Seconds
execute if score $global helper_diff matches 4 run function cartographer_mob_abilities:load/token_reset/hell_param

#5:
#6 Light
#4 Heavy
#Cooldown - 2 Seconds
execute if score $global helper_diff matches 5 run function cartographer_mob_abilities:load/token_reset/arcanic_param

scoreboard players set $tokened_total ca.tokens 0

scoreboard players operation $heavy_max ca.tokens = $heavy_avail ca.tokens
scoreboard players operation $light_max ca.tokens = $light_avail ca.tokens

scoreboard players set $timer ca.tokens 0

tag @a add token_reset

#say Tokens Resetting