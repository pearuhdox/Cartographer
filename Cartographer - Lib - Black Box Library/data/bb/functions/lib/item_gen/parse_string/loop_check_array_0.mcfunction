
#Remove checking slot
data remove storage bbl:item_gen sudo_root.parsing.check
#Put array index 0 into checking slot
data modify storage bbl:item_gen sudo_root.parsing.check set from storage bbl:item_gen sudo_root.parsing.array[0]

#Attempt to copy index 0 of character array onto check slot
execute store result score $item_gen.check_character bbl.storage run data modify storage bbl:item_gen sudo_root.parsing.check set from storage bbl:item_gen sudo_root.parsing.character_array[0].id

scoreboard players set $item_gen.array_end bbl.storage 0
execute store result score $item_gen.array_end bbl.storage run data get storage bbl:item_gen sudo_root.parsing.character_array[0].end

#Feedback for invalid character
execute if score $item_gen.array_end bbl.storage matches 1 run function bb:lib/item_gen/parse_string/invalid_character_found

tag @s add bbl.one_recurse

#If it succeeds (not a match), recurse
execute if entity @s[tag=bbl.one_recurse] if score $item_gen.array_end bbl.storage matches 0 if score $item_gen.check_character bbl.storage matches 1 run function bb:lib/item_gen/parse_string/munch_character_array
#If it fails (matches), itterate 
execute if entity @s[tag=bbl.one_recurse] if score $item_gen.array_end bbl.storage matches 0 if score $item_gen.check_character bbl.storage matches 0 run function bb:lib/item_gen/parse_string/build_final_array
