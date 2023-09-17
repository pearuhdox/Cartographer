scoreboard players remove $arrow_ct ca.ench_var 1
scoreboard players add $ammo_ct ca.ench_var 1

execute if data storage cartographer_custom_enchantments:repeating Arrow{id:"minecraft:arrow"} run scoreboard players add $ammo_normal ca.ench_var 1
execute if data storage cartographer_custom_enchantments:repeating Arrow{id:"minecraft:spectral_arrow"} run scoreboard players add $ammo_spectral ca.ench_var 1
execute if data storage cartographer_custom_enchantments:repeating Arrow{id:"minecraft:tipped_arrow"} run scoreboard players add $ammo_tipped ca.ench_var 1

data modify storage cartographer_custom_enchantments:repeating Quiver append from storage cartographer_custom_enchantments:repeating Arrow
data modify storage cartographer_custom_enchantments:repeating Quiver[-1].Count set value 1b

execute store result storage cartographer_custom_enchantments:repeating Arrow.Count byte 1 run scoreboard players get $arrow_ct ca.ench_var

execute if score $ammo_ct ca.ench_var < @s ca.ammo if score $arrow_ct ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/repeating/recurse/quiver_rec