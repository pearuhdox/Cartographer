
#Check if max line length has been reached
execute if score $item_gen.line_length bbl.storage >= $item_gen.config.max_line_length bbl.storage run function bb:lib/item_gen/parse_string/wrapping/character/limit_reached
