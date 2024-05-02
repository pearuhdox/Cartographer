
execute store result score $stat_calc bbl.storage run data get storage bbl:equips sudo_root.player_inventory.offhand.tag.bbl.string_book
execute if score $stat_calc bbl.storage matches 1.. run function bb:lib/error_messages/book_offhand