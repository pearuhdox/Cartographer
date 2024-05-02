#These effects will activate when the player dies.

#Curse of Shattering
execute as @e[type=item,distance=..5,nbt={Item:{tag:{CustomEnchantments:[{id:"curse_shattering"}]}}}] at @s run function cartographer_custom_enchantments:enchant_effects/curse_shattering

#Soulbound
function cartographer_custom_enchantments:enchant_effects/soulbound

#Second Wind Reset
#End the Second Wind effect if a player dies. Also reset their tier and remove second wind triggers.
scoreboard players set @s ca.sw_time 0
scoreboard players set @s ca.sw_tier 0
tag @s remove mortal_coil

#Set death time score to 1.
scoreboard players set @s ca.death_time 1