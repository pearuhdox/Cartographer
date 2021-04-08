execute store result score $slot i.var run data get storage cartographer_core:pldata working_data.infinity[0].Slot
execute store result score $pass i.var if score $slot i.var matches 0..8
execute if score $pass i.var matches 1 run data modify storage cartographer_custom_enchantments:enchant_effects/infinity/internal working_it append from storage cartographer_core:pldata working_data.infinity[0]

data remove storage cartographer_core:pldata working_data.infinity[0]
execute if data storage cartographer_core:pldata working_data.infinity[0] run function cartographer_custom_enchantments:enchant_effects/infinity/filter