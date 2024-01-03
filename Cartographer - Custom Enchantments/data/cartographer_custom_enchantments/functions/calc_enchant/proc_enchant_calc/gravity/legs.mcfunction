execute store result score $temp ca.susu run data get storage ca.susu:enchants gravity_items.legs.tag.CustomEnchantments[{id:"first_strike"}].lvl
scoreboard players operation @s ca.g_first += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants gravity_items.legs.tag.CustomEnchantments[{id:"cauterize"}].lvl
scoreboard players operation @s ca.g_cau += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants gravity_items.legs.tag.CustomEnchantments[{id:"hex_eater"}].lvl
scoreboard players operation @s ca.g_hex += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants gravity_items.legs.tag.CustomEnchantments[{id:"executioner"}].lvl
scoreboard players operation @s ca.g_exec += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants gravity_items.legs.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
scoreboard players operation @s ca.g_tempo += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants gravity_items.legs.tag.CustomEnchantments[{id:"duelist"}].lvl
scoreboard players operation @s ca.g_duelist += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants gravity_items.legs.tag.CustomEnchantments[{id:"hunter"}].lvl
scoreboard players operation @s ca.g_hunter += $temp ca.susu


execute store result score $temp ca.susu run data get storage ca.susu:enchants gravity_items.legs.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.g_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants gravity_items.legs.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.g_knock += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants gravity_items.legs.tag.Enchantments[{id:"minecraft:smite"}].lvl
scoreboard players operation @s ca.g_smite += $temp ca.susu