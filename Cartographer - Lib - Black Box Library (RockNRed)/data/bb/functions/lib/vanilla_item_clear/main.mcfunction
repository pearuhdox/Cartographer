
data modify storage bbl:vanilla_clear sudo_root.internal.inventory set from entity @s Inventory
scoreboard players set $return_count bbl.storage 0
scoreboard players set $stop_recursion bbl.storage 0

function bb:lib/vanilla_item_clear/recurse
