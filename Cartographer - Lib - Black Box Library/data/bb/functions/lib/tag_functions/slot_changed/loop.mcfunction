
#Failsafe
execute unless score @s bbl.slot_change.present matches -99999..99999 store result score @s bbl.slot_change.present run data get entity @s SelectedItemSlot

scoreboard players operation @s bbl.slot_change.past = @s bbl.slot_change.present
execute store result score @s bbl.slot_change.present run data get entity @s SelectedItemSlot
execute unless score @s bbl.slot_change.past = @s bbl.slot_change.present run function bb:lib/tag_functions/slot_changed/tag
