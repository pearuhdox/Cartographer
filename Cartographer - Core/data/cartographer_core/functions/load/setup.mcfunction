


#Setup all necessary helper scoreboards for the randomize function

scoreboard objectives add randomSalt dummy                
scoreboard objectives add random dummy
scoreboard players set Random3 randomSalt 100011001
scoreboard players set Random1 randomSalt 100 
scoreboard players set @s randomSalt 100 

#Place Shulker Box needed for Shulker Box trick. This is placed at 0 0 0
#Set the world spawn to 0 0 so this can always be accessed. This is a beta location, and will not be required next update!

forceload add 4206900 4206900
setblock 4206900 0 4206900 shulker_box


#Create vector related scoreboards
scoreboard objectives add vectorX dummy
scoreboard objectives add vectorY dummy
scoreboard objectives add vectorZ dummy

#Schedule the loading message.

schedule function cartographer_core:load/load_message 1t
schedule function cartographer_core:load/force_load 1t