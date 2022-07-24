#End Goal - Reset the token count to what it is supposed to be. Run this every 30 seconds if there are no players in combat. This force runs on a /reload.

#Get the player count first:
execute store result score $players ca.tokens run execute if entity @a

#Easy Difficulty aka 1:
#1 Light Token - Cooldown of 4 seconds
#1 Heavy Token - Cooldown of 4 seconds
execute if score $global helper_diff matches 1 run function cartographer_mob_abilities:load/token_reset/easy_param

#Normal Difficulty aka 2:
#2 Light Tokens - 3s
#1 Heavy Token - 3s
execute if score $global helper_diff matches 2 run function cartographer_mob_abilities:load/token_reset/normal_param

#Hard aka 3:
#3 Light Tokens - 3s
#2 Heavy Tokens - 3s
execute if score $global helper_diff matches 3 run function cartographer_mob_abilities:load/token_reset/hard_param

#4:
#4 Light Tokens - 2s
#2 Heavy Tokens - 2s
execute if score $global helper_diff matches 4 run function cartographer_mob_abilities:load/token_reset/hell_param

#5:
#5 Light - 1s
#3 Heavy - 1s
execute if score $global helper_diff matches 5 run function cartographer_mob_abilities:load/token_reset/arcanic_param

scoreboard players set $tokened_total ca.tokens 0

scoreboard players operation $heavy_max ca.tokens = $heavy_avail ca.tokens
scoreboard players operation $light_max ca.tokens = $light_avail ca.tokens

scoreboard players set $timer ca.tokens 0

tag @a add token_reset

#say Tokens Resetting