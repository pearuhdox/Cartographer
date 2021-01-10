function cartographer_core:data_get/do

data modify storage cartographer_core:pldata working_data.knapsack set from entity @s Inventory[{Slot:-106b}].tag.EntityTag.Item

data modify storage cartographer_core:pldata working_data.knapsack.Slot set value 0b

function cartographer_core:data_put/do
