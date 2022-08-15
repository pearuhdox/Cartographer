execute if entity @a[distance=..7] run data modify entity @s Invisible set value 0
execute unless entity @a[distance=..7] run data modify entity @s Invisible set value 1

execute if entity @a[distance=..7] run summon armor_stand ~ ~1 ~ {UUID:[I;823664661,407986577,0,19469393],Marker:1b,Invisible:1b,Tags:["repair_instruction"],CustomNameVisible:1,CustomName:'[{"text":"["},{"keybind":"key.use","color":"aqua"},{"text":"] an item"}]'}
execute if entity @a[distance=..7] run summon armor_stand ~ ~0.75 ~ {UUID:[I;823664661,407986577,0,19469394],Marker:1b,Invisible:1b,Tags:["repair_instruction"],CustomNameVisible:1,CustomName:'[{"text":"into the frame to repair it."}]'}
execute unless score $no_tesseract ca.gamerule matches 1.. if entity @a[distance=..7] run summon armor_stand ~ ~0.5 ~ {UUID:[I;823664661,407986577,0,19469395],Marker:1b,Invisible:1b,Tags:["repair_instruction"],CustomNameVisible:1,CustomName:'[{"text":"["},{"keybind":"key.use","color":"aqua"},{"text":"] on the Limitless"}]'}
execute unless score $no_tesseract ca.gamerule matches 1.. if entity @a[distance=..7] run summon armor_stand ~ ~0.25 ~ {UUID:[I;823664661,407986577,0,19469396],Marker:1b,Invisible:1b,Tags:["repair_instruction"],CustomNameVisible:1,CustomName:'[{"text":"Tesseract to open it."}]'}

execute unless entity @a[distance=..7] run kill 31182015-1851-6191-0000-1291451
execute unless entity @a[distance=..7] run kill 31182015-1851-6191-0000-1291452
execute unless entity @a[distance=..7] run kill 31182015-1851-6191-0000-1291453
execute unless entity @a[distance=..7] run kill 31182015-1851-6191-0000-1291454

kill 31182015-1851-6191-0000-1291455


#Tesseract Shenanigans
execute unless score $no_tesseract ca.gamerule matches 1.. run function cartographer_repair_stations:loop/tick/branches/tesseract
execute if score $no_tesseract ca.gamerule matches 1.. run kill 31182015-1851-6191-0000-221594217

