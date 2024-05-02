
#Append tag char

data modify storage bb:lib sudo_root.parsing.internal.tag_array append from storage bb:lib sudo_root.parsing.metadata_array[0].tag_char

execute unless data storage bb:lib sudo_root.parsing.metadata_array[0].no_back if data storage bb:lib sudo_root.parsing.metadata_array[1] run data modify storage bb:lib sudo_root.parsing.internal.tag_array append value ""

#Remove slot
data remove storage bb:lib sudo_root.parsing.metadata_array[0]

#if more char, recurse
execute if data storage bb:lib sudo_root.parsing.metadata_array[0] run function bb:lib/string_parsing/transform_tag/recurse
