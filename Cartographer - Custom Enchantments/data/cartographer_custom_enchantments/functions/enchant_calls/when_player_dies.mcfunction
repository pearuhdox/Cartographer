#These effects will activate when the player dies.

#Curse of Shattering
execute as @e[type=item,nbt={Item:{tag:{CurseShattering:1}}}] at @s run function cartographer_custom_enchantments:enchant_effects/curse_shattering

#Soulbound
function cartographer_custom_enchantments:enchant_effects/soulbound

#Second Wind Reset
#End the Second Wind effect if a player dies. Also reset their tier and remove second wind triggers.
scoreboard players set @s second_wind_time 0
scoreboard players set @s second_wind_tier 0
tag @s remove mortal_coil

#Set death time score to 1.
scoreboard players set @s helper_deathtime 1