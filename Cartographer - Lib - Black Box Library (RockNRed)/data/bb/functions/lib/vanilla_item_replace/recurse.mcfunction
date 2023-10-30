data remove storage bbl:vanilla_replace sudo_root.internal.search_item
data modify storage bbl:vanilla_replace sudo_root.internal.search_item set from storage bbl:vanilla_replace sudo_root.item_id

execute store success score $data_match bbl.storage run data modify storage bbl:vanilla_replace sudo_root.internal.search_item set from storage bbl:vanilla_replace sudo_root.internal.inventory[0].id

execute if score $data_match bbl.storage matches 0 run function bb:lib/vanilla_item_replace/check_nbt

data remove storage bbl:vanilla_replace sudo_root.internal.inventory[0]
execute if data storage bbl:vanilla_replace sudo_root.internal.inventory[0] if score $stop_recursion bbl.storage matches 0 run function bb:lib/vanilla_item_replace/recurse
