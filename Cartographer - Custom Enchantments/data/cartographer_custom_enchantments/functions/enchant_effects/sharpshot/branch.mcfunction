execute unless score $ranged_damage ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/sharpshot/normal_damage
execute if score $ranged_damage ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/sharpshot/custom_damage

execute on attacker at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.7 1
particle minecraft:composter ~ ~1 ~ 0.35 0.35 0.35 2 10 normal