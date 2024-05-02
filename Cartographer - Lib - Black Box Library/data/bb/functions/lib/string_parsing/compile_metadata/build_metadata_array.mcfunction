
tag @s remove bbl.one_recurse

#Add character array index 0, which matches the currently checked first array, onto the final array
data modify storage bb:lib sudo_root.parsing.metadata_array append from storage bb:lib sudo_root.parsing.internal.character_array[0]

#Remove index 0 from first array
data remove storage bb:lib sudo_root.parsing.array[0]

function bb:lib/string_parsing/compile_metadata/reset_character_array
execute if data storage bb:lib sudo_root.parsing.array[0] run function bb:lib/string_parsing/compile_metadata/recurse_compile
