execute if score @s ca.frost_time matches 2.. run function cartographer_custom_enchantments:enchant_effects/frostbite/branch/add_modifier
execute if score @s ca.frost_time matches 1 run function cartographer_custom_enchantments:enchant_effects/frostbite/branch/remove_modifier

particle minecraft:dust_color_transition 0.565 0.933 1 1 1 1 0.75 ~ ~1 ~ 0.3 0.3 0.3 0 1 normal

execute if score @s ca.frost_time matches 1 run scoreboard players set @s ca.frost_tier 0
scoreboard players remove @s ca.frost_time 1