
#If data present, append to item
execute if data storage bbl:item_gen sudo_root.parsing.final_lore[0] run function bb:lib/item_gen/compile_lore/append

#Remove data appended
data remove storage bbl:item_gen sudo_root.parsing.final_lore[0]

#If data not present, declare end
execute unless data storage bbl:item_gen sudo_root.parsing.final_lore[0] run function bb:lib/item_gen/compile_lore/end
#If data present, loop
execute if data storage bbl:item_gen sudo_root.parsing.final_lore[0] run function bb:lib/item_gen/compile_lore/loop
