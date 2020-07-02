##############################################################################################################
# Author: Jragon [ORIGINAL BY RUBISK. THIS HAS BEEN MODIFIED FOR MINECRAFT 1.12]
# Date: May 20th 2017
# Description: Generates a random number between 1 and 100.
################################################################################################################
scoreboard players set @s randomSalt 100
scoreboard players add @s random 0

scoreboard players operation Random1 randomSalt *= Random3 randomSalt 
scoreboard players operation Random1 randomSalt %= Random3 randomSalt 
scoreboard players operation @s random = Random3 randomSalt 
scoreboard players operation @s random %= Random1 randomSalt 
scoreboard players operation @s random %= @s randomSalt 