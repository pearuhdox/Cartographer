execute unless score $no_first_lexica ca.gamerule matches 1.. if entity @s[tag=!ca.first_lexica] run function cartographer_core:lexica/first_lexica

execute if score $no_lexica_prompt ca.gamerule matches 0 run tellraw @s [{"text":"❰ ","color":"green","bold":true,"italic":false},{"text":"Beastiary ","color":"#FF7D7D","italic":false},{"text":"❱ ","bold":true,"italic":false},{"text":"Discovered ","color":"#ACFFA6","bold":false,"italic":false},{"text":"Bloodthirst","color":"red","bold":false,"italic":false,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Description: ","color":"white","italic":false},{"text":"On death, restore nearby enemy health. Can also buff nearby enemies.","color":"gray","italic":false}]}},{"text":" (Hover to Read)","color":"#ACFFA6","bold":false,"italic":false}]


execute if score $no_lexica_prompt ca.gamerule matches 0 run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.7 1.2
execute if score $no_lexica_prompt ca.gamerule matches 0 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.5