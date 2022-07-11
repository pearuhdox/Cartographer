tag @s add i.restore_inventory

function suso.player_data:get/do

data modify storage i:internal working_it set value []
data modify storage i:internal working_it append from storage suso:pldata working_data.infinity[{Slot:-106b}]
data modify storage i:internal working_it[0].Slot set value 0b
data modify block 4206899 0 4206900 Items set from storage i:internal working_it
item replace entity @s weapon.offhand with air
loot replace entity @s weapon.offhand 1 mine 4206899 0 4206900 air{drop_contents:1b}

data modify storage i:internal working_it set value []
data modify storage i:internal temp set from storage suso:pldata working_data.infinity
function cartographer_custom_enchantments:enchant_effects/infinity/filter
data modify block 4206899 0 4206900 Items set from storage i:internal working_it
loot replace entity @s hotbar.0 9 mine 4206899 0 4206900 air{drop_contents:true}

data modify block 4206899 0 4206900 Items set value []

tag @s remove i.restore_inventory