data modify storage ca.susu:enchants inv set value {}
data modify storage ca.susu:enchants inv set from storage cartographer_core:player_inventory Inventory

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



execute if data storage ca.susu:enchants head.tag.CustomEnchantments run tag @s add check_head
execute if data storage ca.susu:enchants body.tag.CustomEnchantments run tag @s add check_body
execute if data storage ca.susu:enchants legs.tag.CustomEnchantments run tag @s add check_legs
execute if data storage ca.susu:enchants feet.tag.CustomEnchantments run tag @s add check_feet
execute if data storage ca.susu:enchants offh.tag.CustomEnchantments run tag @s add check_offh


execute if data storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:power"}] run tag @s add check_offh
execute if data storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:punch"}] run tag @s add check_offh
execute if data storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:flame"}] run tag @s add check_offh

execute if data storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:swift_sneak"}] run tag @s add check_offh
execute if data storage ca.susu:enchants head.tag.Enchantments[{id:"minecraft:swift_sneak"}] run tag @s add check_head
execute if data storage ca.susu:enchants body.tag.Enchantments[{id:"minecraft:swift_sneak"}] run tag @s add check_body
execute if data storage ca.susu:enchants legs.tag.Enchantments[{id:"minecraft:swift_sneak"}] run tag @s add check_legs
execute if data storage ca.susu:enchants feet.tag.Enchantments[{id:"minecraft:swift_sneak"}] run tag @s add check_feet

execute if data storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:soul_speed"}] run tag @s add check_offh
execute if data storage ca.susu:enchants head.tag.Enchantments[{id:"minecraft:soul_speed"}] run tag @s add check_head
execute if data storage ca.susu:enchants body.tag.Enchantments[{id:"minecraft:soul_speed"}] run tag @s add check_body
execute if data storage ca.susu:enchants legs.tag.Enchantments[{id:"minecraft:soul_speed"}] run tag @s add check_legs
execute if data storage ca.susu:enchants feet.tag.Enchantments[{id:"minecraft:soul_speed"}] run tag @s add check_feet

execute if data storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:frost_walker"}] run tag @s add check_offh
execute if data storage ca.susu:enchants head.tag.Enchantments[{id:"minecraft:frost_walker"}] run tag @s add check_head
execute if data storage ca.susu:enchants body.tag.Enchantments[{id:"minecraft:frost_walker"}] run tag @s add check_body
execute if data storage ca.susu:enchants legs.tag.Enchantments[{id:"minecraft:frost_walker"}] run tag @s add check_legs
execute if data storage ca.susu:enchants feet.tag.Enchantments[{id:"minecraft:frost_walker"}] run tag @s add check_feet

execute if entity @s[tag=check_head] if predicate cartographer_core:shattered/helmet run tag @s remove check_head
execute if entity @s[tag=check_body] if predicate cartographer_core:shattered/chestplate run tag @s remove check_body
execute if entity @s[tag=check_legs] if predicate cartographer_core:shattered/legs run tag @s remove check_legs
execute if entity @s[tag=check_feet] if predicate cartographer_core:shattered/boots run tag @s remove check_feet

execute unless entity @s[tag=check_head] unless data storage ca.susu:enchants head.tag.CustomEnchantments run data modify storage ca.susu:enchants head set value {}
execute unless entity @s[tag=check_body] unless data storage ca.susu:enchants body.tag.CustomEnchantments run data modify storage ca.susu:enchants body set value {}
execute unless entity @s[tag=check_legs] unless data storage ca.susu:enchants legs.tag.CustomEnchantments run data modify storage ca.susu:enchants legs set value {}
execute unless entity @s[tag=check_feet] unless data storage ca.susu:enchants feet.tag.CustomEnchantments run data modify storage ca.susu:enchants feet set value {}
execute unless entity @s[tag=check_offh] unless data storage ca.susu:enchants offh.tag.CustomEnchantments run data modify storage ca.susu:enchants offh set value {}

#Check if the player has loyalty stones in their inventory
execute unless score @s ca.loyalty_time matches 0.. if data storage ca.susu:enchants inv[{tag:{StoredTrident:{}}}] run scoreboard players set @s ca.loyalty_time 1