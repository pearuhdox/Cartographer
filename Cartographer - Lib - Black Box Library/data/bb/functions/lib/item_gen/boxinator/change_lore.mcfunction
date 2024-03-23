
data modify block 4206849 1 4206868 front_text.messages[0] set value '["",[{"text":"","italic":false},[{"storage":"bbl.ts.box:main","nbt":"color","interpret":true},{"storage":"bbl.ts.box:main","nbt":"box[]","font":"box:middle","separator":""},{"storage":"bbl.ts.box:main","nbt":"box[]","font":"box:space","separator":""}]],{"storage":"bbl.ts.box:main","nbt":"lore[0]","interpret":true}]'
data remove storage bbl.ts.box:main lore[0]
data modify storage bbl.ts.box:main loreOut append from block 4206849 1 4206868 front_text.messages[0]
execute if data storage bbl.ts.box:main lore[1] run function bb:lib/item_gen/boxinator/change_lore
