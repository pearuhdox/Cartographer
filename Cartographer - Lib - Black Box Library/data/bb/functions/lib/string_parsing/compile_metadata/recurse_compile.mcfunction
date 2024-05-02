
#Remove checking slot
data remove storage bb:lib sudo_root.parsing.internal.check
#Put array index 0 into checking slot
data modify storage bb:lib sudo_root.parsing.internal.check set from storage bb:lib sudo_root.parsing.array[0]

#Attempt to copy index 0 of character array onto check slot
execute store result score $check_character bbl.storage run data modify storage bb:lib sudo_root.parsing.internal.check set from storage bb:lib sudo_root.parsing.internal.character_array[0].id

scoreboard players set $array_end bbl.storage 0
execute store result score $array_end bbl.storage run data get storage bb:lib sudo_root.parsing.internal.character_array[0].end

#Feedback for invalid character
execute if score $array_end bbl.storage matches 1 run function bb:lib/string_parsing/compile_metadata/invalid_char

tag @s add bbl.one_recurse

#If it succeeds (not a match), recurse
execute if entity @s[tag=bbl.one_recurse] if score $array_end bbl.storage matches 0 if score $check_character bbl.storage matches 1 run function bb:lib/string_parsing/compile_metadata/munch_char_array
#If it fails (matches), itterate 
execute if entity @s[tag=bbl.one_recurse] if score $array_end bbl.storage matches 0 if score $check_character bbl.storage matches 0 run function bb:lib/string_parsing/compile_metadata/build_metadata_array
