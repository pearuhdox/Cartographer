tag @s add doing_auto_charge

function cartographer_custom_enchantments:calc_enchant/auto_charge

data modify storage cartographer_custom_enchantments:auto_charge Arrow set value {id:"minecraft:arrow",Count:1b}

#Sfx
execute if score @s ca.auto_charge matches 1.. at @s run playsound minecraft:item.crossbow.loading_end player @a[distance=..8] ~ ~ ~ 10 0.8


data modify storage cartographer_custom_enchantments:auto_charge Item.Slot set value 0b
data modify block 4206901 0 4206900 Items append from storage cartographer_custom_enchantments:auto_charge Item

execute store result score $auto_multishot ca.ench_var run data get storage cartographer_custom_enchantments:auto_charge Item.tag.Enchantments[{id:"minecraft:multishot"}].lvl

execute store result score $auto_repeating ca.ench_var run data get storage cartographer_custom_enchantments:auto_charge Item.tag.CustomEnchantments[{id:"repeating"}].lvl
execute store result score $auto_ammo ca.ench_var run data get storage cartographer_custom_enchantments:auto_charge Item.tag.Ammo

execute unless score $auto_multishot ca.ench_var matches 1.. unless score $auto_repeating ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/auto_charge/normal

execute if score $auto_repeating ca.ench_var matches 1.. unless score $auto_ammo ca.ench_var > $auto_repeating ca.ench_var run function cartographer_custom_enchantments:enchant_effects/auto_charge/repeating

execute if score $auto_multishot ca.ench_var matches 1.. unless score $auto_repeating ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/auto_charge/multishot


data modify block 4206901 0 4206900 Items set value []
data modify block 4206901 0 4206900 Items append from storage cartographer_custom_enchantments:auto_charge Item

execute if score @s ca.auto_charge matches 1 in minecraft:overworld run loot replace entity @s hotbar.0 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if score @s ca.auto_charge matches 2 in minecraft:overworld run loot replace entity @s hotbar.1 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if score @s ca.auto_charge matches 3 in minecraft:overworld run loot replace entity @s hotbar.2 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if score @s ca.auto_charge matches 4 in minecraft:overworld run loot replace entity @s hotbar.3 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if score @s ca.auto_charge matches 5 in minecraft:overworld run loot replace entity @s hotbar.4 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if score @s ca.auto_charge matches 6 in minecraft:overworld run loot replace entity @s hotbar.5 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if score @s ca.auto_charge matches 7 in minecraft:overworld run loot replace entity @s hotbar.6 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if score @s ca.auto_charge matches 8 in minecraft:overworld run loot replace entity @s hotbar.7 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if score @s ca.auto_charge matches 9 in minecraft:overworld run loot replace entity @s hotbar.8 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if score @s ca.auto_charge matches 10 in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine 4206901 0 4206900 air{drop_contents:1b}

#Remove the ca.repeating tag so it shows an updated ammo count.
tag @s remove showing_repeating

scoreboard players set $auto_repeat ca.repeating 0
scoreboard players set $auto_repeat ca.auto_charge 0

execute unless score @s ca.recoil_count matches 1.. run scoreboard players add @s ca.recoil_count 1

execute if score @s ca.auto_charge matches 1.. run function #minecraft:cartographer/events/enchantments/ranged/auto_charge


scoreboard players set @s ca.auto_charge_count 0