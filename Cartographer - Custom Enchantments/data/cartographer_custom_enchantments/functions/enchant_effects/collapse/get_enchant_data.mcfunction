execute store result score $efficiency ca.collapse run data get entity @s Trident.tag.Enchantments[{id:"minecraft:efficiency"}].lvl

execute store result score $eruption ca.collapse run data get entity @s Trident.tag.CustomEnchantments[{id:"eruption"}].lvl
execute store result score $sapper ca.collapse run data get entity @s Trident.tag.CustomEnchantments[{id:"sapper"}].lvl

execute store result score $fire_aspect ca.collapse run data get entity @s Trident.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
execute store result score $knockback ca.collapse run data get entity @s Trident.tag.Enchantments[{id:"minecraft:knockback"}].lvl
execute store result score $frostbite ca.collapse run data get entity @s Trident.tag.CustomEnchantments[{id:"frostbite"}].lvl



execute store result score $adrenaline ca.collapse run data get entity @s Trident.tag.CustomEnchantments[{id:"adrenaline"}].lvl
execute store result score $energetic ca.collapse run data get entity @s Trident.tag.CustomEnchantments[{id:"energetic"}].lvl
execute store result score $frenzy ca.collapse run data get entity @s Trident.tag.CustomEnchantments[{id:"frenzy"}].lvl
execute store result score $concealed ca.collapse run data get entity @s Trident.tag.CustomEnchantments[{id:"concealed"}].lvl

data modify storage cartographer_custom_statuses:apply_effects data.Effects set from entity @s Trident.tag.ApplyEffects
data modify storage cartographer_custom_statuses:status_inflict data.Effects set from entity @s Trident.tag.StatusInflict

execute as @e[type=armor_stand,tag=ca.collapsing_stand,distance=..1.5] at @s run function cartographer_custom_enchantments:enchant_effects/collapse/apply_status_data