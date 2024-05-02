
#Append first digit from string onto array
data modify storage bb:lib sudo_root.parsing.array append string storage bb:lib sudo_root.parsing.string 0 1

#Remove first digit
execute store result score $removed_index_0 bbl.storage run data modify storage bb:lib sudo_root.parsing.string set string storage bb:lib sudo_root.parsing.string 1

#If digit removed, recurse
execute if score $removed_index_0 bbl.storage matches 1.. run function bb:lib/string_parsing/basic_tear/recurse_rip

#If no more digits, continue parsing
#execute if score $removed_index_0 bbl.storage matches 0 run function bb:lib/string_parsing/basic_tear/finished_rip
