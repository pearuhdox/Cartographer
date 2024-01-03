execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.head.tag.CustomEnchantments[{id:"first_strike"}].lvl
scoreboard players operation @s ca.qu_first += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.head.tag.CustomEnchantments[{id:"cauterize"}].lvl
scoreboard players operation @s ca.qu_cau += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.head.tag.CustomEnchantments[{id:"hex_eater"}].lvl
scoreboard players operation @s ca.qu_hex += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.head.tag.CustomEnchantments[{id:"executioner"}].lvl
scoreboard players operation @s ca.qu_exec += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.head.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
scoreboard players operation @s ca.qu_tempo += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.head.tag.CustomEnchantments[{id:"duelist"}].lvl
scoreboard players operation @s ca.qu_duelist += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.head.tag.CustomEnchantments[{id:"hunter"}].lvl
scoreboard players operation @s ca.qu_hunter += $temp ca.susu


execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.head.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.qu_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.head.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.qu_knock += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.head.tag.Enchantments[{id:"minecraft:smite"}].lvl
scoreboard players operation @s ca.qu_smite += $temp ca.susu