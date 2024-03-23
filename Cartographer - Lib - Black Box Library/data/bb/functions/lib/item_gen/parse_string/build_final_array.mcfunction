
tag @s remove bbl.one_recurse

#Add character array index 0, which matches the currently checked first array, onto the final array
data modify storage bbl:item_gen sudo_root.parsing.final_array append from storage bbl:item_gen sudo_root.parsing.character_array[0]

#Remove index 0 from first array
data remove storage bbl:item_gen sudo_root.parsing.array[0]

#Spit out debug message for end of array
#execute unless data storage bbl:item_gen sudo_root.parsing.array[0] run function bb:lib/item_gen/parse_string/wrapping/start
#Seperated

#execute unless data storage bbl:item_gen sudo_root.parsing.array[0] run tellraw @a {"nbt":"sudo_root.parsing.final_array","storage":"bbl:item_gen"}
