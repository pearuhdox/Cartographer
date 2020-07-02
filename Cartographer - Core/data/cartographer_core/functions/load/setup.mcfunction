


#Setup all necessary helper scoreboards for the randomize function

scoreboard objectives add randomSalt dummy                
scoreboard objectives add random dummy
scoreboard players set Random3 randomSalt 100011001
scoreboard players set Random1 randomSalt 100 
scoreboard players set @s randomSalt 100 


#Schedule the loading message.

schedule function cartographer_core:load/load_message 1t