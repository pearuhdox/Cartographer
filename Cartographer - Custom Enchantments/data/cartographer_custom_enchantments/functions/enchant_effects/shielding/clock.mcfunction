execute unless score @s ca.shielding_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/shielding/reset_branch

execute if score @s ca.shielding_time matches 1 unless entity @s[nbt={AbsorptionAmount:0.0f}] run scoreboard players add @s ca.shielding_time 1

execute if score @s ca.shielding_time matches 1.. run scoreboard players remove @s ca.shielding_time 1