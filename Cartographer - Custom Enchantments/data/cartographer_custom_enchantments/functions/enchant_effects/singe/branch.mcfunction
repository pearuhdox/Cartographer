execute if score $melee ca.singe matches 1.. run particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.5 0.3 0.3 20 normal

execute if score $melee ca.singe matches 1 as @s run damage @s 1 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $melee ca.singe matches 2 as @s run damage @s 1.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $melee ca.singe matches 3 as @s run damage @s 2 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $melee ca.singe matches 4 as @s run damage @s 2.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $melee ca.singe matches 5 as @s run damage @s 3 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $melee ca.singe matches 6 as @s run damage @s 3.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $melee ca.singe matches 7 as @s run damage @s 4 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $melee ca.singe matches 8 as @s run damage @s 4.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $melee ca.singe matches 9 as @s run damage @s 5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $melee ca.singe matches 10 as @s run damage @s 5.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $melee ca.singe matches 11.. as @s run damage @s 6 cartographer_custom_enchantments:enchant_damage_bypass by @p

function #minecraft:cartographer/events/enchants_mob_hit/melee/singe