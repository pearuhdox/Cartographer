
#SIN TIME
#function bb:lib/item_gen/boxinator/info_boxes/parse_lengths/start
#nvm sin is a pain in the ass

# generate box string
data modify storage bbl.ts.box:main box set value ["fsb"]
execute if score $item_gen.highest_length bbl.storage matches 128.. run data modify storage bbl.ts.box:main box append value "7b"
execute if score $item_gen.highest_length bbl.storage matches 128.. run scoreboard players remove $item_gen.highest_length bbl.storage 128
execute if score $item_gen.highest_length bbl.storage matches 64.. run data modify storage bbl.ts.box:main box append value "6b"
execute if score $item_gen.highest_length bbl.storage matches 64.. run scoreboard players remove $item_gen.highest_length bbl.storage 64
execute if score $item_gen.highest_length bbl.storage matches 32.. run data modify storage bbl.ts.box:main box append value "5b"
execute if score $item_gen.highest_length bbl.storage matches 32.. run scoreboard players remove $item_gen.highest_length bbl.storage 32
execute if score $item_gen.highest_length bbl.storage matches 16.. run data modify storage bbl.ts.box:main box append value "4b"
execute if score $item_gen.highest_length bbl.storage matches 16.. run scoreboard players remove $item_gen.highest_length bbl.storage 16
execute if score $item_gen.highest_length bbl.storage matches 8.. run data modify storage bbl.ts.box:main box append value "3b"
execute if score $item_gen.highest_length bbl.storage matches 8.. run scoreboard players remove $item_gen.highest_length bbl.storage 8
execute if score $item_gen.highest_length bbl.storage matches 4.. run data modify storage bbl.ts.box:main box append value "2b"
execute if score $item_gen.highest_length bbl.storage matches 4.. run scoreboard players remove $item_gen.highest_length bbl.storage 4
execute if score $item_gen.highest_length bbl.storage matches 2.. run data modify storage bbl.ts.box:main box append value "1b"
execute if score $item_gen.highest_length bbl.storage matches 2.. run scoreboard players remove $item_gen.highest_length bbl.storage 2
execute if score $item_gen.highest_length bbl.storage matches 1.. run data modify storage bbl.ts.box:main box append value "0b"
execute if score $item_gen.highest_length bbl.storage matches 1.. run scoreboard players remove $item_gen.highest_length bbl.storage 1
data modify storage bbl.ts.box:main box append value "eb"

# put box onto item
data modify storage bbl.ts.box:main lore set from block 4206862 1 4206865 Items[0].tag.display.Lore
data modify storage bbl.ts.box:main loreOut set value []

data modify storage bbl.ts.box:main color set value '{"text":"","color":"#2E0A65"}'
execute if data block 4206862 1 4206865 Items[0].tag.display.box.color run data modify storage bbl.ts.box:main color set from block 4206862 1 4206865 Items[0].tag.display.box.color

#86541 - 185
#{"text":"1","font":"box:auxi","italic":false,"color":"white"},{"text":"8a","font":"box:auxi","italic":false,"color":"white"},

# first line
data modify block 4206849 1 4206868 front_text.messages[0] set value '["",[{"text":"","italic":false},[{"storage":"bbl.ts.box:main","nbt":"color","interpret":true},{"storage":"bbl.ts.box:main","nbt":"box[]","font":"box:top","separator":""},{"storage":"bbl.ts.box:main","nbt":"box[]","font":"box:space","separator":""}]],[{"text":"","italic":false},[{"storage":"bbl.ts.box:main","nbt":"color","interpret":true},{"storage":"bbl.ts.box:main","nbt":"box[]","font":"box:middle","separator":""},{"storage":"bbl.ts.box:main","nbt":"box[]","font":"box:space","separator":""}]],{"storage":"bbl.ts.box:main","nbt":"lore[0]","interpret":true}]'
data remove storage bbl.ts.box:main lore[0]
data modify storage bbl.ts.box:main loreOut append from block 4206849 1 4206868 front_text.messages[0]
# further lines
execute if data storage bbl.ts.box:main lore[1] run function bb:lib/item_gen/boxinator/change_lore
# final line
data modify block 4206849 1 4206868 front_text.messages[0] set value '["",[{"text":"","italic":false},[{"storage":"bbl.ts.box:main","nbt":"color","interpret":true},{"storage":"bbl.ts.box:main","nbt":"box[]","font":"box:middle","separator":""},{"storage":"bbl.ts.box:main","nbt":"box[]","font":"box:space","separator":""}]],[{"text":"","italic":false},[{"storage":"bbl.ts.box:main","nbt":"color","interpret":true},{"storage":"bbl.ts.box:main","nbt":"box[]","font":"box:bottom","separator":""},{"storage":"bbl.ts.box:main","nbt":"box[]","font":"box:space","separator":""}]],{"storage":"bbl.ts.box:main","nbt":"lore[0]","interpret":true}]'
data remove storage bbl.ts.box:main lore[0]
data modify storage bbl.ts.box:main loreOut append from block 4206849 1 4206868 front_text.messages[0]

# set lore on item
data modify block 4206862 1 4206865 Items[0].tag.display.Lore set from storage bbl.ts.box:main loreOut
#Set to storage
data modify storage bbl:item_gen sudo_root.boxed_item set from block 4206862 1 4206865 Items[0]
