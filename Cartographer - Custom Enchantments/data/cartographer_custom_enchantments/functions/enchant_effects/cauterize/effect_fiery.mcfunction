execute if score $cauterize ca.ench_var matches 1 run damage @s 1 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $cauterize ca.ench_var matches 2 run damage @s 1.5 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $cauterize ca.ench_var matches 3 run damage @s 2 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $cauterize ca.ench_var matches 4 run damage @s 2.5 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $cauterize ca.ench_var matches 5.. run damage @s 3 cartographer_custom_enchantments:enchant_damage_bypass


playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..12] ~ ~ ~ 1 0.5