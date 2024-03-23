
#Append first digit from string onto array
data modify storage bbl:item_gen sudo_root.parsing.array append string storage bbl:item_gen sudo_root.parsing.wrap_string 0 1

#Remove first digit
execute store result score $item_gen.removed_index_0 bbl.storage run data modify storage bbl:item_gen sudo_root.parsing.wrap_string set string storage bbl:item_gen sudo_root.parsing.wrap_string 1

#If digit removed, recurse
execute if score $item_gen.removed_index_0 bbl.storage matches 1.. run function bb:lib/item_gen/parse_string/recurse
#If no more digits, continue parsing
execute if score $item_gen.removed_index_0 bbl.storage matches 0 run function bb:lib/item_gen/parse_string/finished_array
