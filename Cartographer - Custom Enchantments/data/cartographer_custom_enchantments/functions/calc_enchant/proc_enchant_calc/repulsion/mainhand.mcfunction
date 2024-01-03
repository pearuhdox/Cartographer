execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.main.tag.CustomEnchantments[{id:"first_strike"}].lvl
scoreboard players operation @s ca.re_first += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.main.tag.CustomEnchantments[{id:"cauterize"}].lvl
scoreboard players operation @s ca.re_cau += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.main.tag.CustomEnchantments[{id:"hex_eater"}].lvl
scoreboard players operation @s ca.re_hex += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.main.tag.CustomEnchantments[{id:"executioner"}].lvl
scoreboard players operation @s ca.re_exec += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.main.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
scoreboard players operation @s ca.re_tempo += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.main.tag.CustomEnchantments[{id:"duelist"}].lvl
scoreboard players operation @s ca.re_duelist += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.main.tag.CustomEnchantments[{id:"hunter"}].lvl
scoreboard players operation @s ca.re_hunter += $temp ca.susu


execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.main.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.re_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.main.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.re_knock += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.main.tag.Enchantments[{id:"minecraft:smite"}].lvl
scoreboard players operation @s ca.re_smite += $temp ca.susu