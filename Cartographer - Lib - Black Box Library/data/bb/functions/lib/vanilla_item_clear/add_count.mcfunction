
execute store result score $found_count bbl.storage run data get storage bbl:vanilla_clear sudo_root.internal.inventory[0].Count
scoreboard players operation $return_count bbl.storage += $found_count bbl.storage

execute if score $clear_count bbl.storage matches 1.. if score $found_count bbl.storage matches 1.. run function bb:lib/vanilla_item_clear/get_slot