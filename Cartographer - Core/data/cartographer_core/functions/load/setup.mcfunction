


#Setup all necessary helper scoreboards for the randomize function

scoreboard objectives add randomSalt dummy                
scoreboard objectives add random dummy
scoreboard players set Random3 randomSalt 100011001
scoreboard players set Random1 randomSalt 100 
scoreboard players set @s randomSalt 100 

#Place Shulker Box needed for Shulker Box trick. This is placed at 0 0 0
#Set the world spawn to 0 0 so this can always be accessed. This is a beta location, and will not be required next update!

setblock 0 0 0 shulker_box
setworldspawn 0 0 0

#Schedule the loading message.

schedule function cartographer_core:load/load_message 1t