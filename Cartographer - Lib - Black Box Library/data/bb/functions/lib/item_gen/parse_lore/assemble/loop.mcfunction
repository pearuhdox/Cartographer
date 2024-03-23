
#Put plain array entry 12 onto final assembly if present
execute if data storage bbl:item_gen sudo_root.parsing.plain_array.12 run function bb:lib/item_gen/parse_lore/assemble/final

#Shift compound array up
function bb:lib/item_gen/parse_lore/shift_up

#Reset end flag
scoreboard players set $item_gen.parsing.end_assembly bbl.storage 0
#Check for ending data
execute store result score $item_gen.parsing.end_assembly bbl.storage run data get storage bbl:item_gen sudo_root.parsing.plain_array.12.end
#Loop if flag not present
execute if score $item_gen.parsing.end_assembly bbl.storage matches 0 run function bb:lib/item_gen/parse_lore/assemble/loop
