#Custom Projectile Ticks
execute as @s[tag=custom_arrow] at @s run function cartographer_custom_enchantments:enchant_effects/arrow_visuals

execute as @s[scores={helper_lifetime=2..}] at @s run function cartographer_custom_enchantments:enchant_effects/process_projectile