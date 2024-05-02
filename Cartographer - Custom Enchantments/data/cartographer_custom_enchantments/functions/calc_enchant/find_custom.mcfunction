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



execute if data storage ca.susu:enchants head.tag.CustomEnchantments run tag @s add ca.check_head
execute if data storage ca.susu:enchants body.tag.CustomEnchantments run tag @s add ca.check_body
execute if data storage ca.susu:enchants legs.tag.CustomEnchantments run tag @s add ca.check_legs
execute if data storage ca.susu:enchants feet.tag.CustomEnchantments run tag @s add ca.check_feet
execute if data storage ca.susu:enchants offh.tag.CustomEnchantments run tag @s add ca.check_offh

execute if data storage ca.susu:enchants head.tag.CustomAttributes run tag @s add ca.check_head
execute if data storage ca.susu:enchants body.tag.CustomAttributes run tag @s add ca.check_body
execute if data storage ca.susu:enchants legs.tag.CustomAttributes run tag @s add ca.check_legs
execute if data storage ca.susu:enchants feet.tag.CustomAttributes run tag @s add ca.check_feet
execute if data storage ca.susu:enchants offh.tag.CustomAttributes run tag @s add ca.check_offh

execute unless entity @s[tag=ca.check_head] run function cartographer_custom_enchantments:calc_enchant/find_custom_branch/head 
execute unless entity @s[tag=ca.check_body] run function cartographer_custom_enchantments:calc_enchant/find_custom_branch/body 
execute unless entity @s[tag=ca.check_legs] run function cartographer_custom_enchantments:calc_enchant/find_custom_branch/legs 
execute unless entity @s[tag=ca.check_feet] run function cartographer_custom_enchantments:calc_enchant/find_custom_branch/feet 
execute unless entity @s[tag=ca.check_offh] run function cartographer_custom_enchantments:calc_enchant/find_custom_branch/offhand 

execute if entity @s[tag=ca.check_head] if predicate cartographer_core:shattered/helmet run tag @s remove ca.check_head
execute if entity @s[tag=ca.check_body] if predicate cartographer_core:shattered/chestplate run tag @s remove ca.check_body
execute if entity @s[tag=ca.check_legs] if predicate cartographer_core:shattered/legs run tag @s remove ca.check_legs
execute if entity @s[tag=ca.check_feet] if predicate cartographer_core:shattered/boots run tag @s remove ca.check_feet

execute unless entity @s[tag=ca.check_head] unless data storage ca.susu:enchants head.tag.CustomEnchantments run data modify storage ca.susu:enchants head set value {}
execute unless entity @s[tag=ca.check_body] unless data storage ca.susu:enchants body.tag.CustomEnchantments run data modify storage ca.susu:enchants body set value {}
execute unless entity @s[tag=ca.check_legs] unless data storage ca.susu:enchants legs.tag.CustomEnchantments run data modify storage ca.susu:enchants legs set value {}
execute unless entity @s[tag=ca.check_feet] unless data storage ca.susu:enchants feet.tag.CustomEnchantments run data modify storage ca.susu:enchants feet set value {}
execute unless entity @s[tag=ca.check_offh] unless data storage ca.susu:enchants offh.tag.CustomEnchantments run data modify storage ca.susu:enchants offh set value {}

#Check if the player has loyalty stones in their inventory
execute unless score @s ca.loyalty_time matches 0.. if data storage ca.susu:enchants inv[{tag:{StoredTrident:{}}}] run scoreboard players set @s ca.loyalty_time 1