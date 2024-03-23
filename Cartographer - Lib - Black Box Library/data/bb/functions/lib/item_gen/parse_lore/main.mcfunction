
#Put user input lore text into wrapper
data modify storage bbl:item_gen sudo_root.parsing.wrap_string set from storage bbl:item_gen sudo_root.item.tag.iii_data.lore.string
#Start parser
function bb:lib/item_gen/parse_string/start
#Start wrapper
function bb:lib/item_gen/parse_string/wrapping/start

#Push end data onto bottom of stack
data modify storage bbl:item_gen sudo_root.parsing.plain_array.end.end set value 1

#Loop assembling
function bb:lib/item_gen/parse_lore/assemble/loop
