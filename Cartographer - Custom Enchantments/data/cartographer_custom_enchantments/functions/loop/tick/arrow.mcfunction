#Custom Projectile Ticks
execute as @s[tag=custom_arrow] run function cartographer_custom_enchantments:enchant_effects/arrow_visuals

execute if score @s ca.lifetime matches 2.. run function cartographer_custom_enchantments:enchant_effects/process_projectile