
function bb:lib/vanilla_item_clear/reduct_slot
scoreboard players remove $clear_count bbl.storage 1
scoreboard players remove $found_count bbl.storage 1

execute if score $clear_count bbl.storage matches 0 run function bb:lib/vanilla_item_clear/cleared_enough
execute unless score $clear_count bbl.storage matches 0 if score $found_count bbl.storage matches 1.. run function bb:lib/vanilla_item_clear/clear
