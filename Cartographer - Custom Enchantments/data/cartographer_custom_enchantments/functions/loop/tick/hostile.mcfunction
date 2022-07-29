#Ashen Debuff (Smouldering)
execute if score @s ca.brittle_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/cauterize/brittle

#Flash Time Debuff
execute if score @s ca.flash_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/flash/time

#Tempo Theft Debuff
execute if score @s ca.temp_warp matches 1.. run function cartographer_custom_enchantments:enchant_effects/tempo_theft/effect_mob

#Frostbite Debuff
execute if score @s ca.frost_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/frostbite/frost

#Current Drag Effects
execute as @s[tag=current_drag] run function cartographer_custom_enchantments:enchant_effects/current_drag

#Cleanse the Skip Smouldering Tag
tag @s remove skip_cauterize

#Remove 1 from Cauterize's previous burn time.
execute if score @s ca.cau_prv_time matches 0.. run scoreboard players remove @s ca.cau_prv_time 1

#Remove Deadeye Tag
tag @s remove deadeye_marked


#Do bonus damage to Multishot Deadeye and reset
execute if score @s ca.deadeye matches 2.. run function cartographer_custom_enchantments:enchant_effects/deadeye/multi_hit
scoreboard players set @s ca.deadeye 0