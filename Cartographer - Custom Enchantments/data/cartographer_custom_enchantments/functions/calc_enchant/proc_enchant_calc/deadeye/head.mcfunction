execute store result score $temp ca.susu run data get storage ca.susu:enchants deadeye_items.head.tag.CustomEnchantments[{id:"first_strike"}].lvl
scoreboard players operation @s ca.dead_first += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants deadeye_items.head.tag.CustomEnchantments[{id:"cauterize"}].lvl
scoreboard players operation @s ca.dead_cau += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants deadeye_items.head.tag.CustomEnchantments[{id:"hex_eater"}].lvl
scoreboard players operation @s ca.dead_hex += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants deadeye_items.head.tag.CustomEnchantments[{id:"executioner"}].lvl
scoreboard players operation @s ca.dead_exec += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants deadeye_items.head.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
scoreboard players operation @s ca.dead_tempo += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants deadeye_items.head.tag.CustomEnchantments[{id:"duelist"}].lvl
scoreboard players operation @s ca.dead_duelist += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants deadeye_items.head.tag.CustomEnchantments[{id:"hunter"}].lvl
scoreboard players operation @s ca.dead_hunter += $temp ca.susu


execute store result score $temp ca.susu run data get storage ca.susu:enchants deadeye_items.head.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.dead_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants deadeye_items.head.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.dead_knock += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants deadeye_items.head.tag.Enchantments[{id:"minecraft:smite"}].lvl
scoreboard players operation @s ca.dead_smite += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants deadeye_items.head.tag.Enchantments[{id:"minecraft:piercing"}].lvl
scoreboard players operation @s ca.dead_piercing += $temp ca.susu