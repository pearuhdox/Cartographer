data modify storage ca.susu:enchants repulsion_items set value {}

data modify storage ca.susu:enchants repulsion_items.main set from storage ca.susu:enchants main
data modify storage ca.susu:enchants repulsion_items.offh set from storage ca.susu:enchants offh



#Check Offhands
execute unless data storage ca.susu:enchants repulsion_items.offh.tag.CustomEnchantments[{id:"repulsion"}].lvl run data modify storage ca.susu:enchants repulsion_items.offh set value {}

execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.offh.tag.CustomEnchantments[{id:"first_strike"}].lvl
scoreboard players operation @s ca.re_first += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.offh.tag.CustomEnchantments[{id:"cauterize"}].lvl
scoreboard players operation @s ca.re_cau += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.offh.tag.CustomEnchantments[{id:"hex_eater"}].lvl
scoreboard players operation @s ca.re_hex += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.offh.tag.CustomEnchantments[{id:"executioner"}].lvl
scoreboard players operation @s ca.re_exec += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.offh.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
scoreboard players operation @s ca.re_tempo += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.offh.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.re_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.offh.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.re_knock += $temp ca.susu

#Check Mainhands
execute unless data storage ca.susu:enchants repulsion_items.main.tag.CustomEnchantments[{id:"repulsion"}].lvl run data modify storage ca.susu:enchants repulsion_items.main set value {}

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

execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.main.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.re_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants repulsion_items.main.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.re_knock += $temp ca.susu