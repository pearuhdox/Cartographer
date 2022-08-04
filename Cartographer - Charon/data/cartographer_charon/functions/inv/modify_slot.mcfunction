function cartographer_charon:inv/add_to_bundle

data modify storage cartographer_charon:player temp.id set value "minecraft:air"
data modify storage cartographer_charon:player temp.Count set value 1
data remove storage cartographer_charon:player temp.tag
data modify storage cartographer_charon:player temp.tag.NoSteal set value 1b
data modify storage cartographer_charon:player temp.tag.Enchantments append value {id:"minecraft:vanishing_curse",lvl:1s}

execute if data storage cartographer_charon:player temp{Slot:100b} run data modify storage cartographer_charon:player temp.id set value "minecraft:air"
execute if data storage cartographer_charon:player temp{Slot:101b} run data modify storage cartographer_charon:player temp.id set value "minecraft:air"
execute if data storage cartographer_charon:player temp{Slot:102b} run data modify storage cartographer_charon:player temp.id set value "minecraft:air"

function cartographer_charon:inv/choose_rand_interval