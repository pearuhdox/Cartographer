tag @s add ca.first_lexica

tellraw @s [{"text":"You have been given a Lexica Cartographia. You can obtain another with the command \"","color":"gray"},{"text":"/trigger lexica","color":"yellow","italic":false},{"text":"\".","color":"gray","italic":false}]

playsound minecraft:item.book.page_turn player @s ~ ~ ~ 2 0.5
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 2 0.75
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 2 1
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 2 1.25
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 2 1.5
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 2 1.75
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 2 2

trigger lexica