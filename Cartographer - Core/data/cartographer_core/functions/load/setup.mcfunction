#Create Randomizer scoreboards
scoreboard objectives add randomSalt dummy                
scoreboard objectives add random dummy
scoreboard players set Random3 randomSalt 100011001
scoreboard players set Random1 randomSalt 100 
scoreboard players set @s randomSalt 100 

#Create player ID scores
scoreboard objectives add ca.pldata.id dummy
scoreboard objectives add ca.pldata.var dummy

#Place Shulker Boxes needed for Shulker Box trick.
forceload add 4206900 4206900
setblock 4206900 0 4206900 purple_shulker_box replace

#Create vector related scoreboards
scoreboard objectives add vectorX dummy
scoreboard objectives add vectorY dummy
scoreboard objectives add vectorZ dummy

#Create the global option scoreboard.
scoreboard objectives add global_options dummy
scoreboard objectives add no_hndbk_pmpt dummy

#Create scores for player damage
scoreboard objectives add damage_queue dummy
scoreboard objectives add custom_death deathCount

execute as @p at @s run execute unless entity @s[scores={no_hndbk_pmpt=0..}] run scoreboard players set @s no_hndbk_pmpt 0

#Setup a score for any and all constant values.
scoreboard objectives add ca.CONSTANT dummy

#Schedule the loading message.

schedule function cartographer_core:load/load_message 5t
schedule function cartographer_core:load/force_load 1t

#Schedule core tick clock.

schedule function cartographer_core:loop/tick/base 1t