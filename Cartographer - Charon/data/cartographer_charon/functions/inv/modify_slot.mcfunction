#Run modification
scoreboard players set $vanish_flag taxes.var 0

execute if score $tax_count charon.gmr matches 1.. run function cartographer_charon:taxes/count
execute if score $tax_durability charon.gmr matches 1.. if data storage cartographer_charon:player temp.tag.Damage run function cartographer_charon:taxes/durability
execute if score $tax_vanish charon.gmr matches 1.. run function cartographer_charon:taxes/vanish

execute unless score $vanish_flag taxes.var matches 1 unless score $tax_retain_items charon.gmr matches 1 run function cartographer_charon:inv/add_to_bundle

execute unless score $tax_retain_items charon.gmr matches 1 run data modify storage cartographer_charon:player temp.id set value "minecraft:air"
execute if score $tax_retain_items charon.gmr matches 1 if score $vanish_flag taxes.var matches 1 run data modify storage cartographer_charon:player temp.id set value "minecraft:air"

scoreboard players set $vanish_flag taxes.var 0

#data modify storage cartographer_charon:player temp.Count set value 1
#data remove storage cartographer_charon:player temp.tag
#data modify storage cartographer_charon:player temp.tag.NoSteal set value 1b
#data modify storage cartographer_charon:player temp.tag.Enchantments append value {id:"minecraft:vanishing_curse",lvl:1s}

#execute if data storage cartographer_charon:player temp{Slot:100b} run data modify storage cartographer_charon:player temp.id set value "minecraft:air"
#execute if data storage cartographer_charon:player temp{Slot:101b} run data modify storage cartographer_charon:player temp.id set value "minecraft:air"
#execute if data storage cartographer_charon:player temp{Slot:102b} run data modify storage cartographer_charon:player temp.id set value "minecraft:air"

scoreboard players operation $max_rand_interval dt.var += $scale_coeff charon.gmr 

function cartographer_charon:inv/choose_rand_interval