########################################
# File: Cartographer Core - Helper / Random
#
# Author: PearUhDox, Jragon, Rubisk | Date: 1/11/2021
#
# Description: Returns a random number between 1 and 100.
# The number is saved to "random".
########################################


scoreboard players set @s randomSalt 100
scoreboard players add @s random 0

scoreboard players operation Random1 randomSalt *= Random3 randomSalt 
scoreboard players operation Random1 randomSalt %= Random3 randomSalt 
scoreboard players operation @s random = Random3 randomSalt 
scoreboard players operation @s random %= Random1 randomSalt 
scoreboard players operation @s random %= @s randomSalt 