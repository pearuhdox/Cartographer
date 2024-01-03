execute store result score $efficiency ca.collapse run data get entity @s item.tag.Enchantments[{id:"minecraft:efficiency"}].lvl

execute store result score $eruption ca.collapse run data get entity @s item.tag.CustomEnchantments[{id:"eruption"}].lvl
execute store result score $sapper ca.collapse run data get entity @s item.tag.CustomEnchantments[{id:"sapper"}].lvl

execute store result score $fire_aspect ca.collapse run data get entity @s item.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
execute store result score $knockback ca.collapse run data get entity @s item.tag.Enchantments[{id:"minecraft:knockback"}].lvl


execute store result score $executioner ca.collapse run data get entity @s item.tag.CustomEnchantments[{id:"executioner"}].lvl
execute store result score $first_strike ca.collapse run data get entity @s item.tag.CustomEnchantments[{id:"first_strike"}].lvl
execute store result score $hex_eater ca.collapse run data get entity @s item.tag.CustomEnchantments[{id:"hex_eater"}].lvl
execute store result score $tempo_theft ca.collapse run data get entity @s item.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
execute store result score $cauterize ca.collapse run data get entity @s item.tag.CustomEnchantments[{id:"cauterize"}].lvl



execute store result score $adrenaline ca.collapse run data get entity @s item.tag.CustomEnchantments[{id:"adrenaline"}].lvl
execute store result score $energetic ca.collapse run data get entity @s item.tag.CustomEnchantments[{id:"energetic"}].lvl
execute store result score $frenzy ca.collapse run data get entity @s item.tag.CustomEnchantments[{id:"frenzy"}].lvl
execute store result score $concealed ca.collapse run data get entity @s item.tag.CustomEnchantments[{id:"concealed"}].lvl

data modify storage cartographer_custom_statuses:apply_effects data.effects set from entity @s item.tag.apply_effects
data modify storage cartographer_custom_statuses:apply_status data.effects set from entity @s item.tag.apply_status

execute as @e[type=armor_stand,tag=ca.collapsing_stand,distance=..1.5] at @s run function cartographer_custom_enchantments:enchant_effects/collapse/apply_status_data