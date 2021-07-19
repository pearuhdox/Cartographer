execute store result score $slot ca.inf_var run data get storage i:internal temp[0].Slot
execute store result score $pass ca.inf_var if score $slot ca.inf_var matches 0..8
execute if score $pass ca.inf_var matches 1 run data modify storage i:internal working_it append from storage i:internal temp[0]

data remove storage i:internal temp[0]
execute if data storage i:internal temp[0] run function cartographer_custom_enchantments:enchant_effects/infinity/filter