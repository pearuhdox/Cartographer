function cartographer_core:data_get/do

data modify storage cartographer_core:pldata working_data.infinity.slot0 set value {}
data modify storage cartographer_core:pldata working_data.infinity.slot1 set value {}
data modify storage cartographer_core:pldata working_data.infinity.slot2 set value {}
data modify storage cartographer_core:pldata working_data.infinity.slot3 set value {}
data modify storage cartographer_core:pldata working_data.infinity.slot4 set value {}
data modify storage cartographer_core:pldata working_data.infinity.slot5 set value {}
data modify storage cartographer_core:pldata working_data.infinity.slot6 set value {}
data modify storage cartographer_core:pldata working_data.infinity.slot7 set value {}
data modify storage cartographer_core:pldata working_data.infinity.slot8 set value {}
data modify storage cartographer_core:pldata working_data.infinity.offhand set value {}

data modify storage cartographer_core:pldata working_data.infinity.slot0 set from entity @s Inventory[{Slot:0b}]
data modify storage cartographer_core:pldata working_data.infinity.slot1 set from entity @s Inventory[{Slot:1b}]
data modify storage cartographer_core:pldata working_data.infinity.slot2 set from entity @s Inventory[{Slot:2b}]
data modify storage cartographer_core:pldata working_data.infinity.slot3 set from entity @s Inventory[{Slot:3b}]
data modify storage cartographer_core:pldata working_data.infinity.slot4 set from entity @s Inventory[{Slot:4b}]
data modify storage cartographer_core:pldata working_data.infinity.slot5 set from entity @s Inventory[{Slot:5b}]
data modify storage cartographer_core:pldata working_data.infinity.slot6 set from entity @s Inventory[{Slot:6b}]
data modify storage cartographer_core:pldata working_data.infinity.slot7 set from entity @s Inventory[{Slot:7b}]
data modify storage cartographer_core:pldata working_data.infinity.slot8 set from entity @s Inventory[{Slot:8b}]
data modify storage cartographer_core:pldata working_data.infinity.offhand set from entity @s Inventory[{Slot:-106b}]

data modify storage cartographer_core:pldata working_data.infinity.offhand.Slot set value 0


function cartographer_core:data_put/do