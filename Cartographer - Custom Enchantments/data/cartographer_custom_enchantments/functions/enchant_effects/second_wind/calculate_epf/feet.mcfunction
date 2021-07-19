data modify storage ca.core:epf_calc temp_item set value {}
data modify storage ca.core:epf_calc temp_item set from entity @s Inventory[{Slot:100b}]

execute store result score $temp ca.epf run data get storage ca.core:epf_calc temp_item.tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation @s ca.epf_prot += $temp ca.epf

execute store result score $temp ca.epf run data get storage ca.core:epf_calc temp_item.tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
scoreboard players operation @s ca.epf_proj += $temp ca.epf

execute store result score $temp ca.epf run data get storage ca.core:epf_calc temp_item.tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
scoreboard players operation @s ca.epf_blas += $temp ca.epf

execute store result score $temp ca.epf run data get storage ca.core:epf_calc temp_item.tag.Enchantments[{id:"minecraft:fire_protection"}].lvl
scoreboard players operation @s ca.epf_fire += $temp ca.epf

execute store result score $temp ca.epf run data get storage ca.core:epf_calc temp_item.tag.Enchantments[{id:"minecraft:feather_falling"}].lvl
scoreboard players operation @s ca.epf_fall += $temp ca.epf