#Ashen Debuff (Smouldering)
execute as @s[scores={ca.brittle_time=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/cauterize/brittle

#Flash Time Debuff
execute as @s[scores={ca.flash_time=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/flash/time

#Tempo Theft Debuff
execute as @s[scores={ca.temp_warp=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/tempo_theft/effect

#Frostbite Debuff
execute as @s[scores={ca.frost_time=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/frostbite/frost

#Current Drag Effects
execute as @s[tag=current_drag] at @s run function cartographer_custom_enchantments:enchant_effects/current_drag

#Cleanse the Skip Smouldering Tag
tag @s[tag=skip_cauterize] remove skip_cauterize

#Remove 1 from Cauterize's previous burn time.
scoreboard players remove @s[scores={ca.cau_prv_time=0..}] ca.cau_prv_time 1

#Set nearby players as in combat
execute as @a[distance=..12] at @s run scoreboard players set @s ca.combat_time 0