data remove storage cartographer_custom_durability:storage Inventory
data modify storage cartographer_custom_durability:storage Inventory set from entity @s Inventory

execute store result score @s ca.head_dur run data get storage cartographer_custom_durability:storage Inventory[{Slot:103b}].tag.Damage
execute store result score @s ca.body_dur run data get storage cartographer_custom_durability:storage Inventory[{Slot:102b}].tag.Damage
execute store result score @s ca.legs_dur run data get storage cartographer_custom_durability:storage Inventory[{Slot:101b}].tag.Damage
execute store result score @s ca.feet_dur run data get storage cartographer_custom_durability:storage Inventory[{Slot:100b}].tag.Damage

execute store result score @s ca.head_unb run data get storage cartographer_custom_durability:storage Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute store result score @s ca.body_unb run data get storage cartographer_custom_durability:storage Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute store result score @s ca.legs_unb run data get storage cartographer_custom_durability:storage Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute store result score @s ca.feet_unb run data get storage cartographer_custom_durability:storage Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl

execute unless data storage cartographer_custom_durability:storage Inventory[{Slot:103b}].tag.Damage run scoreboard players set @s ca.head_dur -1
execute unless data storage cartographer_custom_durability:storage Inventory[{Slot:102b}].tag.Damage run scoreboard players set @s ca.body_dur -1
execute unless data storage cartographer_custom_durability:storage Inventory[{Slot:101b}].tag.Damage run scoreboard players set @s ca.legs_dur -1
execute unless data storage cartographer_custom_durability:storage Inventory[{Slot:100b}].tag.Damage run scoreboard players set @s ca.feet_dur -1

execute if data storage cartographer_custom_durability:storage Inventory[{Slot:102b,id:"minecraft:elytra"}] run scoreboard players set @s ca.body_dur -1

execute if data storage cartographer_custom_durability:storage Inventory[{Slot:103b}].tag.Unbreakable run scoreboard players set @s ca.head_dur -1
execute if data storage cartographer_custom_durability:storage Inventory[{Slot:102b}].tag.Unbreakable run scoreboard players set @s ca.body_dur -1
execute if data storage cartographer_custom_durability:storage Inventory[{Slot:101b}].tag.Unbreakable run scoreboard players set @s ca.legs_dur -1
execute if data storage cartographer_custom_durability:storage Inventory[{Slot:100b}].tag.Unbreakable run scoreboard players set @s ca.feet_dur -1

data modify storage cartographer_custom_durability:armor Items set value []
data modify storage cartographer_custom_durability:armor Items append from storage cartographer_custom_durability:storage Inventory[{Slot:100b}]
data modify storage cartographer_custom_durability:armor Items append from storage cartographer_custom_durability:storage Inventory[{Slot:101b}]
data modify storage cartographer_custom_durability:armor Items append from storage cartographer_custom_durability:storage Inventory[{Slot:102b}]
data modify storage cartographer_custom_durability:armor Items append from storage cartographer_custom_durability:storage Inventory[{Slot:103b}]

data modify storage cartographer_custom_durability:armor Items[{Slot:100b}].Slot set value 0b
data modify storage cartographer_custom_durability:armor Items[{Slot:101b}].Slot set value 1b
data modify storage cartographer_custom_durability:armor Items[{Slot:102b}].Slot set value 2b
data modify storage cartographer_custom_durability:armor Items[{Slot:103b}].Slot set value 3b