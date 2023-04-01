
execute store result score @s bbl.storage run data get storage bbl:item_effects sudo_root.body.tag.item_effects[{id:"block_interaction"}].lvl
execute if score @s bbl.storage matches 1.. run scoreboard players operation @s bbl.ie.block += @s bbl.storage
