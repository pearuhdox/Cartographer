data modify storage cartographer_custom_enchantments:repeating Item set value {}

execute if score @s ca.repeating matches 1..7 run data modify storage cartographer_custom_enchantments:repeating Item set from entity @s SelectedItem
execute if score @s ca.repeating matches 11..17 run data modify storage cartographer_custom_enchantments:repeating Item set from entity @s Inventory[{Slot:-106b}]

data modify storage cartographer_custom_enchantments:repeating Item.Slot set value 0b


execute store result score $ammo_ct ca.ench_var run data get storage cartographer_custom_enchantments:repeating Item.tag.Ammo
execute store result storage cartographer_custom_enchantments:repeating Item.tag.Ammo int 1 run scoreboard players remove $ammo_ct ca.ench_var 1

execute if score $ammo_ct ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/repeating/chamber


execute in minecraft:overworld run data modify block 4206900 0 4206901 Items set value {}
execute in minecraft:overworld run data modify block 4206900 0 4206901 Items append from storage cartographer_custom_enchantments:repeating Item

#Place item in player hand
execute if entity @s[scores={ca.repeating=1..7}] in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206901 air{drop_contents:1b}
execute if entity @s[scores={ca.repeating=11..17}] in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine 4206900 0 4206901 air{drop_contents:1b}

playsound minecraft:item.crossbow.loading_end player @a[distance=..8] ~ ~ ~ 1 2

scoreboard players set @s ca.rpt_cdl 0

#Run display for subtitle
tag @s[scores={ca.ui_location=1}] remove showing_repeating

function cartographer_custom_enchantments:calc_enchant/run

function #minecraft:cartographer/events/enchantments/ranged/repeating