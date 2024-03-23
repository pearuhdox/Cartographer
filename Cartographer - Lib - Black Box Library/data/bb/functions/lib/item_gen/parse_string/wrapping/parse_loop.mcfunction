
#Add string to plain array
data modify storage bbl:item_gen sudo_root.parsing.plain_array.0.array append from storage bbl:item_gen sudo_root.parsing.final_array[0].id

#Add length to line
#Store width
execute store result score $item_gen.add_length bbl.storage run data get storage bbl:item_gen sudo_root.parsing.final_array[0].width
#Add to total width
scoreboard players operation $item_gen.line_length bbl.storage += $item_gen.add_length bbl.storage

#Check for space/comma
scoreboard players set $item_gen.special_character bbl.storage 0
execute store result score $item_gen.special_character bbl.storage run data get storage bbl:item_gen sudo_root.parsing.final_array[0].special_character

#Space
execute if score $item_gen.special_character bbl.storage matches 1 run function bb:lib/item_gen/parse_string/wrapping/character/space
#Comma
#execute if score $item_gen.special_character bbl.storage matches 2 run function bb:lib/item_gen/parse_string/wrapping/character/comma

#Remove entry of data
data remove storage bbl:item_gen sudo_root.parsing.final_array[0]
#If more data found, loop
execute if data storage bbl:item_gen sudo_root.parsing.final_array[0] run function bb:lib/item_gen/parse_string/wrapping/parse_loop
#End
execute if score $item_gen.wrapper_end bbl.storage matches 1.. unless data storage bbl:item_gen sudo_root.parsing.final_array[0] run function bb:lib/item_gen/parse_string/wrapping/done
