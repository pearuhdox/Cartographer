data modify storage cartographer_custom_enchantments:reconstruction data set value {}
data modify storage cartographer_custom_enchantments:reconstruction Damage set value {}

execute if score $reconstruct_slot ca.ench_var matches 1 run data modify storage cartographer_custom_enchantments:reconstruction data set from entity @s Inventory[{Slot:0b}]
execute if score $reconstruct_slot ca.ench_var matches 2 run data modify storage cartographer_custom_enchantments:reconstruction data set from entity @s Inventory[{Slot:1b}]
execute if score $reconstruct_slot ca.ench_var matches 3 run data modify storage cartographer_custom_enchantments:reconstruction data set from entity @s Inventory[{Slot:2b}]
execute if score $reconstruct_slot ca.ench_var matches 4 run data modify storage cartographer_custom_enchantments:reconstruction data set from entity @s Inventory[{Slot:3b}]
execute if score $reconstruct_slot ca.ench_var matches 5 run data modify storage cartographer_custom_enchantments:reconstruction data set from entity @s Inventory[{Slot:4b}]
execute if score $reconstruct_slot ca.ench_var matches 6 run data modify storage cartographer_custom_enchantments:reconstruction data set from entity @s Inventory[{Slot:5b}]
execute if score $reconstruct_slot ca.ench_var matches 7 run data modify storage cartographer_custom_enchantments:reconstruction data set from entity @s Inventory[{Slot:6b}]
execute if score $reconstruct_slot ca.ench_var matches 8 run data modify storage cartographer_custom_enchantments:reconstruction data set from entity @s Inventory[{Slot:7b}]
execute if score $reconstruct_slot ca.ench_var matches 9 run data modify storage cartographer_custom_enchantments:reconstruction data set from entity @s Inventory[{Slot:8b}]

execute if score $reconstruct_slot ca.ench_var matches 100 run data modify storage cartographer_custom_enchantments:reconstruction data set from entity @s Inventory[{Slot:100b}]
execute if score $reconstruct_slot ca.ench_var matches 101 run data modify storage cartographer_custom_enchantments:reconstruction data set from entity @s Inventory[{Slot:101b}]
execute if score $reconstruct_slot ca.ench_var matches 102 run data modify storage cartographer_custom_enchantments:reconstruction data set from entity @s Inventory[{Slot:102b}]
execute if score $reconstruct_slot ca.ench_var matches 103 run data modify storage cartographer_custom_enchantments:reconstruction data set from entity @s Inventory[{Slot:103b}]

execute if score $reconstruct_slot ca.ench_var matches 106 run data modify storage cartographer_custom_enchantments:reconstruction data set from entity @s Inventory[{Slot:-106b}]

execute store result score $reconstruct_damage ca.ench_var run data get storage cartographer_custom_enchantments:reconstruction data.tag.Damage
execute store result score $reconstruct_amt ca.ench_var run data get storage cartographer_custom_enchantments:reconstruction data.tag.CustomEnchantments[{id:"reconstruction"}].lvl

scoreboard players operation $reconstruct_damage ca.ench_var -= $reconstruct_amt ca.ench_var

execute if score $reconstruct_damage ca.ench_var matches ..-1 run scoreboard players set $reconstruct_slot ca.ench_var 0

execute if score $reconstruct_slot ca.ench_var matches 1.. store result storage cartographer_custom_enchantments:reconstruction Damage int 1 run scoreboard players get $reconstruct_damage ca.ench_var

execute if score $reconstruct_slot ca.ench_var matches 1.. store result score $reconstruct_unb ca.ench_var run data get storage cartographer_custom_enchantments:reconstruction data.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute if score $reconstruct_slot ca.ench_var matches 1.. if score $reconstruct_unb ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/reconstruction/unbreaking

execute if score $reconstruct_slot ca.ench_var matches 1 run item modify entity @s hotbar.0 cartographer_custom_enchantments:reconstruction
execute if score $reconstruct_slot ca.ench_var matches 2 run item modify entity @s hotbar.1 cartographer_custom_enchantments:reconstruction
execute if score $reconstruct_slot ca.ench_var matches 3 run item modify entity @s hotbar.2 cartographer_custom_enchantments:reconstruction
execute if score $reconstruct_slot ca.ench_var matches 4 run item modify entity @s hotbar.3 cartographer_custom_enchantments:reconstruction
execute if score $reconstruct_slot ca.ench_var matches 5 run item modify entity @s hotbar.4 cartographer_custom_enchantments:reconstruction
execute if score $reconstruct_slot ca.ench_var matches 6 run item modify entity @s hotbar.5 cartographer_custom_enchantments:reconstruction
execute if score $reconstruct_slot ca.ench_var matches 7 run item modify entity @s hotbar.6 cartographer_custom_enchantments:reconstruction
execute if score $reconstruct_slot ca.ench_var matches 8 run item modify entity @s hotbar.7 cartographer_custom_enchantments:reconstruction
execute if score $reconstruct_slot ca.ench_var matches 9 run item modify entity @s hotbar.8 cartographer_custom_enchantments:reconstruction

execute if score $reconstruct_slot ca.ench_var matches 100 run item modify entity @s armor.feet cartographer_custom_enchantments:reconstruction
execute if score $reconstruct_slot ca.ench_var matches 101 run item modify entity @s armor.legs cartographer_custom_enchantments:reconstruction
execute if score $reconstruct_slot ca.ench_var matches 102 run item modify entity @s armor.chest cartographer_custom_enchantments:reconstruction
execute if score $reconstruct_slot ca.ench_var matches 103 run item modify entity @s armor.head cartographer_custom_enchantments:reconstruction

execute if score $reconstruct_slot ca.ench_var matches 106 run item modify entity @s weapon.offhand cartographer_custom_enchantments:reconstruction

execute if score $reconstruct_slot ca.ench_var matches 100..103 run stopsound @a[distance=..8] player minecraft:item.armor.equip_leather
execute if score $reconstruct_slot ca.ench_var matches 100..103 run stopsound @a[distance=..8] player minecraft:item.armor.equip_gold
execute if score $reconstruct_slot ca.ench_var matches 100..103 run stopsound @a[distance=..8] player minecraft:item.armor.equip_chain
execute if score $reconstruct_slot ca.ench_var matches 100..103 run stopsound @a[distance=..8] player minecraft:item.armor.equip_iron
execute if score $reconstruct_slot ca.ench_var matches 100..103 run stopsound @a[distance=..8] player minecraft:item.armor.equip_diamond
execute if score $reconstruct_slot ca.ench_var matches 100..103 run stopsound @a[distance=..8] player minecraft:item.armor.equip_netherite
execute if score $reconstruct_slot ca.ench_var matches 100..103 run stopsound @a[distance=..8] player minecraft:item.armor.equip_turtle
execute if score $reconstruct_slot ca.ench_var matches 100..103 run stopsound @a[distance=..8] player minecraft:item.armor.equip_elytra

execute if score $reconstruct_slot ca.ench_var matches 1.. unless score $did_reconstruct ca.ench_var matches 1.. run playsound minecraft:entity.villager.work_mason player @s ~ ~ ~ 0.2 2
execute if score $reconstruct_slot ca.ench_var matches 1.. unless score $did_reconstruct ca.ench_var matches 1.. run particle minecraft:happy_villager ~ ~0.4 ~ 0 0 0 4 1 force
execute if score $reconstruct_slot ca.ench_var matches 1.. run scoreboard players set $did_reconstruct ca.ench_var 1

function #minecraft:cartographer/events/enchantments/passive/reconstruction