
data remove storage bbl:item_gen sudo_root.Lore

##Begin parsing lore, functions must be ran in order of desired final lore assembly

#Blank line for spacer from name
#data modify storage bbl:item_gen sudo_root.parsing.final_lore append value {string:" ",length:0}

#Lore text
function bb:lib/item_gen/parse_lore/main

##Final assembly of compiled lore onto item

#Reset highest line flag
scoreboard players set $item_gen.highest_length bbl.storage 0

#Compile lore
function bb:lib/item_gen/compile_lore/loop

#Apply lore to item data
data modify storage bbl:item_gen sudo_root.item.tag.display.Lore set from storage bbl:item_gen sudo_root.Lore

#Remove items from holding shulker
data remove block 4206862 1 4206865 Items
#Put item in shulker box at bbl chunk
data modify block 4206862 1 4206865 Items[] set from storage bbl:item_gen sudo_root.item
#BOX TIME BOX TIME
function bb:lib/item_gen/boxinator/start
