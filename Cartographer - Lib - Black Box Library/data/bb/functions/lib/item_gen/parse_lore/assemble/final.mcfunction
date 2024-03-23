
#Reset array data
data remove storage bbl:concat sudo_root.array
#Feed array to concater
data modify storage bbl:concat sudo_root.array set from storage bbl:item_gen sudo_root.parsing.plain_array.12.array
#Concat
function bb:lib/concat/start

#Reset push storage
data remove storage bbl:item_gen sudo_root.parsing.push

#Put string into push storage
data modify storage bbl:item_gen sudo_root.parsing.push.string set from storage bbl:concat sudo_root.string
#Put line length into push storage
data modify storage bbl:item_gen sudo_root.parsing.push.length set from storage bbl:item_gen sudo_root.parsing.plain_array.12.length

#Append push storage to final lore
data modify storage bbl:item_gen sudo_root.parsing.final_lore append from storage bbl:item_gen sudo_root.parsing.push