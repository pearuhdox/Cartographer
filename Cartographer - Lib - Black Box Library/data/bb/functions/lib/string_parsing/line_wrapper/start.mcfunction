
data modify storage bb:lib sudo_root.parsing.string set from storage bb:lib sudo_root.parsing.wrapper_input
function bb:lib/string_parsing/basic_tear/start

function bb:lib/string_parsing/compile_metadata/start

scoreboard players set $wrap.line_length bbl.storage 0
scoreboard players set $wrap.line_count bbl.storage 1
scoreboard players set $wrap.wrapper_end bbl.storage 1
data remove storage bb:lib sudo_root.parsing.wrapper_array

function bb:lib/string_parsing/line_wrapper/recurse
