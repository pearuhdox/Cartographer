#Tempo Theft Debuff
execute as @s[scores={ca.temp_warp=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/tempo_theft/effect

#Current Drag Effects
execute as @s[tag=current_drag] at @s run function cartographer_custom_enchantments:enchant_effects/current_drag

#Opportunist Melee Effects
execute as @s[scores={op_time=1}] at @s run function cartographer_custom_enchantments:enchant_effects/opportunist/melee/hit
execute as @s[scores={op_time=1..}] at @s run scoreboard players remove @s op_time 1