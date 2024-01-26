execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.CustomEnchantments[{id:"first_strike"}].lvl
scoreboard players operation @s ca.t_first += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.CustomEnchantments[{id:"cauterize"}].lvl
scoreboard players operation @s ca.t_cau += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.CustomEnchantments[{id:"hex_eater"}].lvl
scoreboard players operation @s ca.t_hex += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.CustomEnchantments[{id:"executioner"}].lvl
scoreboard players operation @s ca.t_exec += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
scoreboard players operation @s ca.t_tempo += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.CustomEnchantments[{id:"duelist"}].lvl
scoreboard players operation @s ca.t_duelist += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.CustomEnchantments[{id:"hunter"}].lvl
scoreboard players operation @s ca.t_hunter += $temp ca.susu


execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.t_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.t_knock += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.Enchantments[{id:"minecraft:smite"}].lvl
scoreboard players operation @s ca.t_smite += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.ThornsAoE
scoreboard players operation @s ca.t_aoe += $temp ca.susu