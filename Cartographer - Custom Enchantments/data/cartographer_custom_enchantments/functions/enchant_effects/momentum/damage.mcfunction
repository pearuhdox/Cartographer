execute if score $momentum_damage ca.momentum matches 1 run damage @s 1 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 2 run damage @s 2 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 3 run damage @s 3 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 4 run damage @s 4 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 5 run damage @s 5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 6 run damage @s 6 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 7 run damage @s 7 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 8 run damage @s 8 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 9 run damage @s 9 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 10 run damage @s 10 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 11 run damage @s 11 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 12 run damage @s 12 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 13 run damage @s 13 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 14 run damage @s 14 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 15 run damage @s 15 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 16 run damage @s 16 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 17 run damage @s 17 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 18 run damage @s 18 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 19 run damage @s 19 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 20 run damage @s 20 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 21 run damage @s 21 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 22 run damage @s 22 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 23 run damage @s 23 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 24 run damage @s 24 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 25 run damage @s 25 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 26 run damage @s 26 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 27 run damage @s 27 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 28 run damage @s 28 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 29 run damage @s 29 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 30 run damage @s 30 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 31 run damage @s 31 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 32 run damage @s 32 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 33 run damage @s 33 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 34 run damage @s 34 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 35 run damage @s 35 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 36 run damage @s 36 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 37 run damage @s 37 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 38 run damage @s 38 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 39 run damage @s 39 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $momentum_damage ca.momentum matches 40.. run damage @s 40 cartographer_custom_enchantments:enchant_damage_bypass by @p

scoreboard players set @s co_send -7
scoreboard players set @s co_y 5

#TODO: KBR SCALING
execute unless entity @s[tag=ca.boss] if score $knockback ca.momentum matches 1 run scoreboard players set @s co_send -11
execute unless entity @s[tag=ca.boss] if score $knockback ca.momentum matches 2 run scoreboard players set @s co_send -17
execute unless entity @s[tag=ca.boss] if score $knockback ca.momentum matches 3 run scoreboard players set @s co_send -22
execute unless entity @s[tag=ca.boss] if score $knockback ca.momentum matches 4 run scoreboard players set @s co_send -30
execute unless entity @s[tag=ca.boss] if score $knockback ca.momentum matches 5.. run scoreboard players set @s co_send -38

execute at @s run function motion:motion/push
