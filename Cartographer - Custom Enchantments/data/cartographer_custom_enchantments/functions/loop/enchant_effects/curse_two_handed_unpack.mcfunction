function cartographer_core:data_get/do

data modify storage cartographer_core:pldata working_data.knapsack.Slot set value 0b

data modify block 4206900 0 4206900 Items append from storage cartographer_core:pldata working_data.knapsack

loot replace entity @s weapon.offhand 1 mine 4206900 0 4206900 air{drop_contents:1b}

playsound minecraft:item.armor.equip_leather player @s ~ ~ ~ 0.5 0.5