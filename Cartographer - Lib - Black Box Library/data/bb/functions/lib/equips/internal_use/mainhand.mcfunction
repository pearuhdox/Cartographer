
execute store result score $stat_calc bbl.storage run data get storage bbl:equips sudo_root.player_inventory.mainhand{id:"minecraft:written_book"}.tag.bbl.book_type
execute if score $stat_calc bbl.storage matches 1 run function bb:lib/string_parsing/transform_tag/signed_book
execute if score $stat_calc bbl.storage matches 2 run function inasa:func/item_index/input_book/name/held
execute if score $stat_calc bbl.storage matches 3 run function inasa:func/item_index/input_book/lore/held
