function cartographer_core:data_get/do

data modify storage cartographer_core:pldata working_data.offhand set from entity @s Inventory[{Slot:-106b}]
data modify storage cartographer_core:pldata working_data.offhand.Slot set value 0b

function cartographer_core:data_put/do