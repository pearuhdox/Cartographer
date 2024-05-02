
data modify storage bb:lib sudo_root.parsing.tag_input set from storage bbl:equips sudo_root.player_inventory.mainhand.tag.pages[0]

clear @s minecraft:writable_book{bbl:{string_book:1}}

function bb:lib/string_parsing/transform_tag/give_book

function bb:lib/string_parsing/transform_tag/start
