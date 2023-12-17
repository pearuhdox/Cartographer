execute unless score $ranged_damage ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/point_blank/normal_damage
execute if score $ranged_damage ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/point_blank/custom_damage

playsound minecraft:entity.armor_stand.break player @a[distance=..8.5] ~ ~ ~ 1.2 0.75
particle minecraft:wax_on ~ ~1 ~ 0.35 0.35 0.35 2 10 normal