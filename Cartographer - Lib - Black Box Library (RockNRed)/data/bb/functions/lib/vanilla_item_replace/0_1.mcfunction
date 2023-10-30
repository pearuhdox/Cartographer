

execute if score $found_slot bbl.storage matches 0 run data modify storage inv:main inv.all[{Slot:0b}].Count set from storage bbl:vanilla_replace sudo_root.custom_item.Count
execute if score $found_slot bbl.storage matches 0 run data modify storage inv:main inv.all[{Slot:0b}].id set from storage bbl:vanilla_replace sudo_root.custom_item.id
execute if score $found_slot bbl.storage matches 0 run data modify storage inv:main inv.all[{Slot:0b}].tag set from storage bbl:vanilla_replace sudo_root.custom_item.tag

execute if score $found_slot bbl.storage matches 1 run data modify storage inv:main inv.all[{Slot:1b}].Count set from storage bbl:vanilla_replace sudo_root.custom_item.Count
execute if score $found_slot bbl.storage matches 1 run data modify storage inv:main inv.all[{Slot:1b}].id set from storage bbl:vanilla_replace sudo_root.custom_item.id
execute if score $found_slot bbl.storage matches 1 run data modify storage inv:main inv.all[{Slot:1b}].tag set from storage bbl:vanilla_replace sudo_root.custom_item.tag
