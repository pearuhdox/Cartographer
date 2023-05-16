data modify storage cartographer_custom_enchantments:curse_rusting data set value {}
data modify storage cartographer_custom_enchantments:curse_rusting Damage set value {}

execute if score $rust_slot ca.ench_var matches 1 run data modify storage cartographer_custom_enchantments:curse_rusting data set from entity @s Inventory[{Slot:0b}]
execute if score $rust_slot ca.ench_var matches 2 run data modify storage cartographer_custom_enchantments:curse_rusting data set from entity @s Inventory[{Slot:1b}]
execute if score $rust_slot ca.ench_var matches 3 run data modify storage cartographer_custom_enchantments:curse_rusting data set from entity @s Inventory[{Slot:2b}]
execute if score $rust_slot ca.ench_var matches 4 run data modify storage cartographer_custom_enchantments:curse_rusting data set from entity @s Inventory[{Slot:3b}]
execute if score $rust_slot ca.ench_var matches 5 run data modify storage cartographer_custom_enchantments:curse_rusting data set from entity @s Inventory[{Slot:4b}]
execute if score $rust_slot ca.ench_var matches 6 run data modify storage cartographer_custom_enchantments:curse_rusting data set from entity @s Inventory[{Slot:5b}]
execute if score $rust_slot ca.ench_var matches 7 run data modify storage cartographer_custom_enchantments:curse_rusting data set from entity @s Inventory[{Slot:6b}]
execute if score $rust_slot ca.ench_var matches 8 run data modify storage cartographer_custom_enchantments:curse_rusting data set from entity @s Inventory[{Slot:7b}]
execute if score $rust_slot ca.ench_var matches 9 run data modify storage cartographer_custom_enchantments:curse_rusting data set from entity @s Inventory[{Slot:8b}]

execute if score $rust_slot ca.ench_var matches 100 run data modify storage cartographer_custom_enchantments:curse_rusting data set from entity @s Inventory[{Slot:100b}]
execute if score $rust_slot ca.ench_var matches 101 run data modify storage cartographer_custom_enchantments:curse_rusting data set from entity @s Inventory[{Slot:101b}]
execute if score $rust_slot ca.ench_var matches 102 run data modify storage cartographer_custom_enchantments:curse_rusting data set from entity @s Inventory[{Slot:102b}]
execute if score $rust_slot ca.ench_var matches 103 run data modify storage cartographer_custom_enchantments:curse_rusting data set from entity @s Inventory[{Slot:103b}]

execute if score $rust_slot ca.ench_var matches 106 run data modify storage cartographer_custom_enchantments:curse_rusting data set from entity @s Inventory[{Slot:-106b}]

execute store result score $rust_damage ca.ench_var run data get storage cartographer_custom_enchantments:curse_rusting data.tag.Damage
execute store result score $rust_damage_max ca.ench_var run data get storage cartographer_custom_enchantments:curse_rusting data.tag.MaxDamage
execute store result score $rust_damage_amt ca.ench_var run data get storage cartographer_custom_enchantments:curse_rusting data.tag.CustomEnchantments[{id:"curse_rusting"}].lvl

scoreboard players operation $rust_damage_max ca.ench_var -= $rust_damage_amt ca.ench_var
execute unless score $rust_damage ca.ench_var > $rust_damage_max ca.ench_var run scoreboard players operation $rust_damage ca.ench_var += $rust_damage_amt ca.ench_var
execute unless score $rust_damage ca.ench_var < $rust_damage_max ca.ench_var run scoreboard players set $rust_slot ca.ench_var 0

execute if score $rust_slot ca.ench_var matches 1.. store result storage cartographer_custom_enchantments:curse_rusting Damage int 1 run scoreboard players get $rust_damage ca.ench_var

execute if score $rust_slot ca.ench_var matches 1.. store result score $rust_unb ca.ench_var run data get storage cartographer_custom_enchantments:curse_rusting data.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute if score $rust_slot ca.ench_var matches 1.. if score $rust_unb ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/curse_rusting/unbreaking

execute if score $rust_slot ca.ench_var matches 1 run item modify entity @s hotbar.0 cartographer_custom_enchantments:curse_rusting
execute if score $rust_slot ca.ench_var matches 2 run item modify entity @s hotbar.1 cartographer_custom_enchantments:curse_rusting
execute if score $rust_slot ca.ench_var matches 3 run item modify entity @s hotbar.2 cartographer_custom_enchantments:curse_rusting
execute if score $rust_slot ca.ench_var matches 4 run item modify entity @s hotbar.3 cartographer_custom_enchantments:curse_rusting
execute if score $rust_slot ca.ench_var matches 5 run item modify entity @s hotbar.4 cartographer_custom_enchantments:curse_rusting
execute if score $rust_slot ca.ench_var matches 6 run item modify entity @s hotbar.5 cartographer_custom_enchantments:curse_rusting
execute if score $rust_slot ca.ench_var matches 7 run item modify entity @s hotbar.6 cartographer_custom_enchantments:curse_rusting
execute if score $rust_slot ca.ench_var matches 8 run item modify entity @s hotbar.7 cartographer_custom_enchantments:curse_rusting
execute if score $rust_slot ca.ench_var matches 9 run item modify entity @s hotbar.8 cartographer_custom_enchantments:curse_rusting

execute if score $rust_slot ca.ench_var matches 100 run item modify entity @s armor.feet cartographer_custom_enchantments:curse_rusting
execute if score $rust_slot ca.ench_var matches 101 run item modify entity @s armor.legs cartographer_custom_enchantments:curse_rusting
execute if score $rust_slot ca.ench_var matches 102 run item modify entity @s armor.chest cartographer_custom_enchantments:curse_rusting
execute if score $rust_slot ca.ench_var matches 103 run item modify entity @s armor.head cartographer_custom_enchantments:curse_rusting

execute if score $rust_slot ca.ench_var matches 106 run item modify entity @s weapon.offhand cartographer_custom_enchantments:curse_rusting

execute if score $rust_slot ca.ench_var matches 100..103 run stopsound @a[distance=..8] player minecraft:item.armor.equip_leather
execute if score $rust_slot ca.ench_var matches 100..103 run stopsound @a[distance=..8] player minecraft:item.armor.equip_gold
execute if score $rust_slot ca.ench_var matches 100..103 run stopsound @a[distance=..8] player minecraft:item.armor.equip_chain
execute if score $rust_slot ca.ench_var matches 100..103 run stopsound @a[distance=..8] player minecraft:item.armor.equip_iron
execute if score $rust_slot ca.ench_var matches 100..103 run stopsound @a[distance=..8] player minecraft:item.armor.equip_diamond
execute if score $rust_slot ca.ench_var matches 100..103 run stopsound @a[distance=..8] player minecraft:item.armor.equip_netherite
execute if score $rust_slot ca.ench_var matches 100..103 run stopsound @a[distance=..8] player minecraft:item.armor.equip_turtle
execute if score $rust_slot ca.ench_var matches 100..103 run stopsound @a[distance=..8] player minecraft:item.armor.equip_elytra

execute if score $rust_slot ca.ench_var matches 1.. unless score $did_rust ca.ench_var matches 1.. run playsound minecraft:block.grindstone.use player @a ~ ~ ~ 0.1 2
execute if score $rust_slot ca.ench_var matches 1.. unless score $did_rust ca.ench_var matches 1.. run particle minecraft:wax_on ~ ~0.4 ~ 0 0 0 4 1 force
execute if score $rust_slot ca.ench_var matches 1.. run scoreboard players set $did_rust ca.ench_var 1