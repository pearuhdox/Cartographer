execute store result score $temp ca.susu run data get storage ca.susu:enchants starfall_items.offh.tag.CustomEnchantments[{id:"first_strike"}].lvl
scoreboard players operation @s ca.sm_first += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants starfall_items.offh.tag.CustomEnchantments[{id:"cauterize"}].lvl
scoreboard players operation @s ca.sm_cau += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants starfall_items.offh.tag.CustomEnchantments[{id:"hex_eater"}].lvl
scoreboard players operation @s ca.sm_hex += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants starfall_items.offh.tag.CustomEnchantments[{id:"executioner"}].lvl
scoreboard players operation @s ca.sm_exec += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants starfall_items.offh.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
scoreboard players operation @s ca.sm_tempo += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants starfall_items.offh.tag.CustomEnchantments[{id:"duelist"}].lvl
scoreboard players operation @s ca.sm_duelist += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants starfall_items.offh.tag.CustomEnchantments[{id:"hunter"}].lvl
scoreboard players operation @s ca.sm_hunter += $temp ca.susu


execute store result score $temp ca.susu run data get storage ca.susu:enchants starfall_items.offh.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.sm_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants starfall_items.offh.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.sm_knock += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants starfall_items.offh.tag.Enchantments[{id:"minecraft:smite"}].lvl
scoreboard players operation @s ca.sm_smite += $temp ca.susu