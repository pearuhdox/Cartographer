data modify storage ca.susu:enchants quake_items set value {}
data modify storage ca.susu:enchants quake_items.head set from storage ca.susu:enchants head
data modify storage ca.susu:enchants quake_items.body set from storage ca.susu:enchants body
data modify storage ca.susu:enchants quake_items.legs set from storage ca.susu:enchants legs
data modify storage ca.susu:enchants quake_items.feet set from storage ca.susu:enchants feet
data modify storage ca.susu:enchants quake_items.main set from storage ca.susu:enchants main
data modify storage ca.susu:enchants quake_items.offh set from storage ca.susu:enchants offh

#Check Feet
execute unless data storage ca.susu:enchants quake_items.feet.tag.CustomEnchantments[{id:"quake"}].lvl run data modify storage ca.susu:enchants quake_items.feet set value {}

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.feet.tag.CustomEnchantments[{id:"first_strike"}].lvl
scoreboard players operation @s ca.qu_first += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.feet.tag.CustomEnchantments[{id:"cauterize"}].lvl
scoreboard players operation @s ca.qu_cau += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.feet.tag.CustomEnchantments[{id:"hex_eater"}].lvl
scoreboard players operation @s ca.qu_hex += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.feet.tag.CustomEnchantments[{id:"executioner"}].lvl
scoreboard players operation @s ca.qu_exec += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.feet.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
scoreboard players operation @s ca.qu_tempo += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.feet.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.qu_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.feet.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.qu_knock += $temp ca.susu

#Check Legs
execute unless data storage ca.susu:enchants quake_items.legs.tag.CustomEnchantments[{id:"quake"}].lvl run data modify storage ca.susu:enchants quake_items.legs set value {}

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.legs.tag.CustomEnchantments[{id:"first_strike"}].lvl
scoreboard players operation @s ca.qu_first += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.legs.tag.CustomEnchantments[{id:"cauterize"}].lvl
scoreboard players operation @s ca.qu_cau += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.legs.tag.CustomEnchantments[{id:"hex_eater"}].lvl
scoreboard players operation @s ca.qu_hex += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.legs.tag.CustomEnchantments[{id:"executioner"}].lvl
scoreboard players operation @s ca.qu_exec += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.legs.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
scoreboard players operation @s ca.qu_tempo += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.legs.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.qu_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.legs.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.qu_knock += $temp ca.susu

#Check Body
execute unless data storage ca.susu:enchants quake_items.body.tag.CustomEnchantments[{id:"quake"}].lvl run data modify storage ca.susu:enchants quake_items.body set value {}

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.body.tag.CustomEnchantments[{id:"first_strike"}].lvl
scoreboard players operation @s ca.qu_first += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.body.tag.CustomEnchantments[{id:"cauterize"}].lvl
scoreboard players operation @s ca.qu_cau += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.body.tag.CustomEnchantments[{id:"hex_eater"}].lvl
scoreboard players operation @s ca.qu_hex += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.body.tag.CustomEnchantments[{id:"executioner"}].lvl
scoreboard players operation @s ca.qu_exec += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.body.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
scoreboard players operation @s ca.qu_tempo += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.body.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.qu_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.body.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.qu_knock += $temp ca.susu

#Check Head
execute unless data storage ca.susu:enchants quake_items.head.tag.CustomEnchantments[{id:"quake"}].lvl run data modify storage ca.susu:enchants quake_items.head set value {}

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

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.head.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.qu_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.head.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.qu_knock += $temp ca.susu

#Check Offhands
execute unless data storage ca.susu:enchants quake_items.offh.tag.CustomEnchantments[{id:"quake"}].lvl run data modify storage ca.susu:enchants quake_items.offh set value {}

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.offh.tag.CustomEnchantments[{id:"first_strike"}].lvl
scoreboard players operation @s ca.qu_first += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.offh.tag.CustomEnchantments[{id:"cauterize"}].lvl
scoreboard players operation @s ca.qu_cau += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.offh.tag.CustomEnchantments[{id:"hex_eater"}].lvl
scoreboard players operation @s ca.qu_hex += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.offh.tag.CustomEnchantments[{id:"executioner"}].lvl
scoreboard players operation @s ca.qu_exec += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.offh.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
scoreboard players operation @s ca.qu_tempo += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.offh.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.qu_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.offh.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.qu_knock += $temp ca.susu

#Check Mainhands
execute unless data storage ca.susu:enchants quake_items.main.tag.CustomEnchantments[{id:"quake"}].lvl run data modify storage ca.susu:enchants quake_items.main set value {}

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.main.tag.CustomEnchantments[{id:"first_strike"}].lvl
scoreboard players operation @s ca.qu_first += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.main.tag.CustomEnchantments[{id:"cauterize"}].lvl
scoreboard players operation @s ca.qu_cau += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.main.tag.CustomEnchantments[{id:"hex_eater"}].lvl
scoreboard players operation @s ca.qu_hex += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.main.tag.CustomEnchantments[{id:"executioner"}].lvl
scoreboard players operation @s ca.qu_exec += $temp ca.susu
execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.main.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
scoreboard players operation @s ca.qu_tempo += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.main.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.qu_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants quake_items.main.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.qu_knock += $temp ca.susu