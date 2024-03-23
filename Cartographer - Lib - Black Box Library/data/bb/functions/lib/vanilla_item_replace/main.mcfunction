
data modify storage bbl:vanilla_replace sudo_root.internal.inventory set from entity @s Inventory
scoreboard players set $stop_recursion bbl.storage 0

function bb:lib/vanilla_item_replace/recurse
