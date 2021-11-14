data modify storage ca.susu:enchants inv set value {}
data modify storage ca.susu:enchants inv set from entity @s Inventory

data modify storage ca.susu:enchants head set value {}
data modify storage ca.susu:enchants body set value {}
data modify storage ca.susu:enchants legs set value {}
data modify storage ca.susu:enchants feet set value {}
data modify storage ca.susu:enchants offh set value {}

data modify storage ca.susu:enchants head set from storage ca.susu:enchants inv[{Slot:103b}]
data modify storage ca.susu:enchants body set from storage ca.susu:enchants inv[{Slot:102b}]
data modify storage ca.susu:enchants legs set from storage ca.susu:enchants inv[{Slot:101b}]
data modify storage ca.susu:enchants feet set from storage ca.susu:enchants inv[{Slot:100b}]
data modify storage ca.susu:enchants offh set from storage ca.susu:enchants inv[{Slot:-106b}]

#Run extra checks added via tag hook here
function #minecraft:inventory_calculate/extras


scoreboard players set @s ca.armor_count 0
execute if data storage ca.susu:enchants head.id run scoreboard players add @s ca.armor_count 1
execute if data storage ca.susu:enchants body.id run scoreboard players add @s ca.armor_count 1
execute if data storage ca.susu:enchants legs.id run scoreboard players add @s ca.armor_count 1
execute if data storage ca.susu:enchants feet.id run scoreboard players add @s ca.armor_count 1

execute unless data storage ca.susu:enchants head.tag.CustomEnchantments run data modify storage ca.susu:enchants head set value {}
execute unless data storage ca.susu:enchants body.tag.CustomEnchantments run data modify storage ca.susu:enchants body set value {}
execute unless data storage ca.susu:enchants legs.tag.CustomEnchantments run data modify storage ca.susu:enchants legs set value {}
execute unless data storage ca.susu:enchants feet.tag.CustomEnchantments run data modify storage ca.susu:enchants feet set value {}
execute unless data storage ca.susu:enchants offh.tag.CustomEnchantments run data modify storage ca.susu:enchants offh set value {}

execute if data storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:power"}] run data modify storage ca.susu:enchants offh set from storage ca.susu:enchants inv[{Slot:-106b}]
execute if data storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:punch"}] run data modify storage ca.susu:enchants offh set from storage ca.susu:enchants inv[{Slot:-106b}]
execute if data storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:flame"}] run data modify storage ca.susu:enchants offh set from storage ca.susu:enchants inv[{Slot:-106b}]


execute if data storage ca.susu:enchants head.tag.CustomEnchantments run tag @s add check_head
execute if data storage ca.susu:enchants body.tag.CustomEnchantments run tag @s add check_body
execute if data storage ca.susu:enchants legs.tag.CustomEnchantments run tag @s add check_legs
execute if data storage ca.susu:enchants feet.tag.CustomEnchantments run tag @s add check_feet
execute if data storage ca.susu:enchants offh.tag.CustomEnchantments run tag @s add check_offh

execute if data storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:power"}] run tag @s add check_offh
execute if data storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:punch"}] run tag @s add check_offh
execute if data storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:flame"}] run tag @s add check_offh