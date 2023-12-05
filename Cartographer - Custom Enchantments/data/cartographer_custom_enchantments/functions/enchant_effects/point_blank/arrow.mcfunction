execute unless score @s ca.attr_ranged matches 1.. run function cartographer_custom_enchantments:enchant_effects/point_blank/normal_damage
execute if score @s ca.attr_ranged matches 1.. run function cartographer_custom_enchantments:enchant_effects/point_blank/custom_damage

execute as @s[scores={ca.point_blank=1..,ca.lifetime=4..}] run scoreboard players set @s ca.point_blank 0
execute as @s[scores={ca.point_blank=1..},nbt={inGround:1b}] run scoreboard players set @s ca.point_blank 0

execute as @s[scores={ca.lifetime=..3}] at @s run particle minecraft:wax_on ~ ~ ~ 0.1 0.1 0.1 3 2 normal
execute as @s[scores={ca.lifetime=3}] at @s run particle minecraft:poof ~ ~ ~ 0 0 0 0.15 4 normal