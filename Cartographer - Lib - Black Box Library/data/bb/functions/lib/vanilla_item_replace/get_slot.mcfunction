
execute store result score $found_slot bbl.storage run data get storage bbl:vanilla_replace sudo_root.internal.inventory[0].Slot

scoreboard players set $stop_recursion bbl.storage 1

function bb:lib/vanilla_item_replace/replace_slot
