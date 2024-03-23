
execute store result storage bbl:item_gen sudo_root.parsing.plain_array.0.length int 1 run scoreboard players get $item_gen.line_length bbl.storage

scoreboard players set $item_gen.line_length bbl.storage 0

scoreboard players add $item_gen.line_count bbl.storage 1

function bb:lib/item_gen/parse_string/wrapping/shift_plain_up

data remove storage bbl:item_gen sudo_root.parsing.plain_array.0
