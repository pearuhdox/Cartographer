data modify storage cartographer_custom_statuses:player_equip inv set value {}
data modify storage cartographer_custom_statuses:player_equip inv set from storage cartographer_core:player_inventory Inventory

data modify storage cartographer_custom_statuses:player_equip head set value {}
data modify storage cartographer_custom_statuses:player_equip body set value {}
data modify storage cartographer_custom_statuses:player_equip legs set value {}
data modify storage cartographer_custom_statuses:player_equip feet set value {}
data modify storage cartographer_custom_statuses:player_equip offh set value {}
data modify storage cartographer_custom_statuses:player_equip main set value {}

data modify storage cartographer_custom_statuses:player_equip head set from storage cartographer_custom_statuses:player_equip inv[{Slot:103b}]
data modify storage cartographer_custom_statuses:player_equip body set from storage cartographer_custom_statuses:player_equip inv[{Slot:102b}]
data modify storage cartographer_custom_statuses:player_equip legs set from storage cartographer_custom_statuses:player_equip inv[{Slot:101b}]
data modify storage cartographer_custom_statuses:player_equip feet set from storage cartographer_custom_statuses:player_equip inv[{Slot:100b}]
data modify storage cartographer_custom_statuses:player_equip offh set from storage cartographer_custom_statuses:player_equip inv[{Slot:-106b}]
data modify storage cartographer_custom_statuses:player_equip main set from entity @s SelectedItem

#Run extra checks added via tag hook here
#function #minecraft:inventory_calculate/extras



tag @s remove ca.si_head
tag @s remove ca.si_body
tag @s remove ca.si_legs
tag @s remove ca.si_feet
tag @s remove ca.si_offh
tag @s remove ca.si_main

tag @s remove ca.ae_head
tag @s remove ca.ae_body
tag @s remove ca.ae_legs
tag @s remove ca.ae_feet
tag @s remove ca.ae_offh
tag @s remove ca.ae_main

execute if data storage cartographer_custom_statuses:player_equip head.tag.StatusInflict run tag @s add ca.si_head
execute if data storage cartographer_custom_statuses:player_equip body.tag.StatusInflict run tag @s add ca.si_body
execute if data storage cartographer_custom_statuses:player_equip legs.tag.StatusInflict run tag @s add ca.si_legs
execute if data storage cartographer_custom_statuses:player_equip feet.tag.StatusInflict run tag @s add ca.si_feet
execute if data storage cartographer_custom_statuses:player_equip offh.tag.StatusInflict run tag @s add ca.si_offh
execute if data storage cartographer_custom_statuses:player_equip main.tag.StatusInflict run tag @s add ca.si_main

execute if data storage cartographer_custom_statuses:player_equip head.tag.ApplyEffects run tag @s add ca.ae_head
execute if data storage cartographer_custom_statuses:player_equip body.tag.ApplyEffects run tag @s add ca.ae_body
execute if data storage cartographer_custom_statuses:player_equip legs.tag.ApplyEffects run tag @s add ca.ae_legs
execute if data storage cartographer_custom_statuses:player_equip feet.tag.ApplyEffects run tag @s add ca.ae_feet
execute if data storage cartographer_custom_statuses:player_equip offh.tag.ApplyEffects run tag @s add ca.ae_offh
execute if data storage cartographer_custom_statuses:player_equip main.tag.ApplyEffects run tag @s add ca.ae_main