
execute store result storage bb:lib sudo_root.parsing.wrapper_array.0.length int 1 run scoreboard players get $wrap.line_length bbl.storage

scoreboard players set $wrap.line_length bbl.storage 0

scoreboard players add $wrap.line_count bbl.storage 1

data modify storage bbl:concat sudo_root.array set from storage bb:lib sudo_root.parsing.wrapper_array.0.array
function bb:lib/concat/start
data modify storage bb:lib sudo_root.parsing.wrapper_array.0.string set from storage bbl:concat sudo_root.string
data remove storage bb:lib sudo_root.parsing.wrapper_array.0.array

function bb:lib/string_parsing/line_wrapper/shift_plain_up

data remove storage bb:lib sudo_root.parsing.wrapper_array.0
