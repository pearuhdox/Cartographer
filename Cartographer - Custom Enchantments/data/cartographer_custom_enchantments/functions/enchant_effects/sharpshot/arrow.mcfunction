execute unless score @s ca.attr_ranged matches 1.. run function cartographer_custom_enchantments:enchant_effects/sharpshot/normal_damage
execute if score @s ca.attr_ranged matches 1.. run function cartographer_custom_enchantments:enchant_effects/sharpshot/custom_damage


execute as @s[scores={ca.sharpshot=1..},nbt={inGround:1b}] run scoreboard players set @s ca.sharpshot 0
execute as @s[scores={ca.lifetime=2..}] at @s run particle minecraft:composter ~ ~ ~ 0.1 0.1 0.1 0.02 3 normal