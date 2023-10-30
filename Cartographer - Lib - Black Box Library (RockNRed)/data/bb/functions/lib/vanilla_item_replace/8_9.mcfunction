
execute if score $found_slot bbl.storage matches 8 run data modify storage inv:main inv.all[{Slot:8b}].Count set from storage bbl:vanilla_replace sudo_root.custom_item.Count
execute if score $found_slot bbl.storage matches 8 run data modify storage inv:main inv.all[{Slot:8b}].id set from storage bbl:vanilla_replace sudo_root.custom_item.id
execute if score $found_slot bbl.storage matches 8 run data modify storage inv:main inv.all[{Slot:8b}].tag set from storage bbl:vanilla_replace sudo_root.custom_item.tag

execute if score $found_slot bbl.storage matches 9 run data modify storage inv:main inv.all[{Slot:9b}].Count set from storage bbl:vanilla_replace sudo_root.custom_item.Count
execute if score $found_slot bbl.storage matches 9 run data modify storage inv:main inv.all[{Slot:9b}].id set from storage bbl:vanilla_replace sudo_root.custom_item.id
execute if score $found_slot bbl.storage matches 9 run data modify storage inv:main inv.all[{Slot:9b}].tag set from storage bbl:vanilla_replace sudo_root.custom_item.tag

