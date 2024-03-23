
#Remove any data
data remove storage bbl:item_gen sudo_root.string
#Save current string
data modify storage bbl:item_gen sudo_root.string set from storage bbl:item_gen sudo_root.parsing.final_lore[0].string

#Get line's length
execute store result score $item_gen.current_length bbl.storage run data get storage bbl:item_gen sudo_root.parsing.final_lore[0].length
#If the line is longer than prior highest, save new highest
execute if score $item_gen.current_length bbl.storage > $item_gen.highest_length bbl.storage run scoreboard players operation $item_gen.highest_length bbl.storage = $item_gen.current_length bbl.storage

#Apply lore
function bb:lib/item_gen/compile_lore/apply_lore with storage bbl:item_gen sudo_root
