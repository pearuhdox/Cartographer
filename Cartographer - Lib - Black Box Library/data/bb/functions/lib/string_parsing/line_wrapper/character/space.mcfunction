
#Check if max line length has been reached
execute if score $wrap.line_length bbl.storage >= $wrap.max_line_length bbl.storage run function bb:lib/string_parsing/line_wrapper/character/limit_reached
