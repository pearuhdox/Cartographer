function cartographer_core:data_get/do

data modify storage cartographer_custom_enchantments:enchant_effects/infinity/internal working_it set value []
data modify storage cartographer_custom_enchantments:enchant_effects/infinity/internal working_it append from storage cartographer_core:pldata working_data.infinity[{Slot:-106b}]
data modify storage cartographer_custom_enchantments:enchant_effects/infinity/internal working_it[0].Slot set value 0b
data modify block 4206899 0 4206900 Items set from storage cartographer_custom_enchantments:enchant_effects/infinity/internal working_it
loot replace entity @s weapon.offhand 1 mine 4206899 0 4206900 air{drop_contents:1b}

function cartographer_custom_enchantments:enchant_effects/infinity/filter
data modify block 4206899 0 4206900 Items set from storage cartographer_custom_enchantments:enchant_effects/infinity/internal working_it
loot replace entity @s hotbar.0 9 mine 4206899 0 4206900 air{drop_contents:true}

data modify block 4206899 0 4206900 Items set value []

tag @s remove i.restore_inventory