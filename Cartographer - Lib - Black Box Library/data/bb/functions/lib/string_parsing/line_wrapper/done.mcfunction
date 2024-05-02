
execute store result storage bb:lib sudo_root.parsing.wrapper_array.0.length int 1 run scoreboard players get $wrap.line_length bbl.storage

data modify storage bbl:concat sudo_root.array set from storage bb:lib sudo_root.parsing.wrapper_array.0.array
function bb:lib/concat/start
data modify storage bb:lib sudo_root.parsing.wrapper_array.0.string set from storage bbl:concat sudo_root.string
data remove storage bb:lib sudo_root.parsing.wrapper_array.0.array

scoreboard players set $wrap.wrapper_end bbl.storage 0
