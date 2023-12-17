data modify storage ca.susu:enchants arrow set value {}
data modify storage ca.susu:enchants arrow set from entity @s item


scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants arrow.tag.CustomEnchantments[{id:"frost"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.frost += $temp ca.susu
scoreboard players operation $custom_arrow ca.var += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants arrow.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.tempo_theft += $temp ca.susu
scoreboard players operation $custom_arrow ca.var += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants arrow.tag.CustomEnchantments[{id:"point_blank"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.point_blank += $temp ca.susu
scoreboard players operation $custom_arrow ca.var += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants arrow.tag.CustomEnchantments[{id:"sharpshot"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.sharpshot += $temp ca.susu
scoreboard players operation $custom_arrow ca.var += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants arrow.tag.CustomEnchantments[{id:"concentration"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.concentration += $temp ca.susu
scoreboard players operation $custom_arrow ca.var += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants arrow.tag.CustomEnchantments[{id:"explosive"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.explosive += $temp ca.susu
scoreboard players operation $custom_arrow ca.var += $temp ca.susu



scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants arrow.tag.Enchantments[{id:"minecraft:flame"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.flame += $temp ca.susu
scoreboard players operation $custom_arrow ca.var += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants arrow.tag.Enchantments[{id:"minecraft:piercing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.piercing += $temp ca.susu
scoreboard players operation $custom_arrow ca.var += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants arrow.tag.Enchantments[{id:"minecraft:power"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.power += $temp ca.susu
scoreboard players operation $custom_arrow ca.var += $temp ca.susu



scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants arrow.tag.CustomAttributes[{id:"ranged_flat"}].amount 10
execute unless score $temp ca.susu matches 0 store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.attr_ranged += $temp ca.susu
scoreboard players operation $custom_arrow ca.var += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants arrow.tag.CustomAttributes[{id:"ranged_percent"}].amount 100
execute unless score $temp ca.susu matches 0 store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.attr_ranged_perc += $temp ca.susu
scoreboard players operation $custom_arrow ca.var += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants arrow.tag.CustomAttributes[{id:"ranged_speed"}].amount 100
execute unless score $temp ca.susu matches 0 store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.attr_ranged_speed += $temp ca.susu
scoreboard players operation $custom_arrow ca.var += $temp ca.susu
