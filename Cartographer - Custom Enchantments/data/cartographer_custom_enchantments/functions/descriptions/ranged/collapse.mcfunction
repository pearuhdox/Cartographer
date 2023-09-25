execute unless score $no_first_lexica ca.gamerule matches 1.. if entity @s[tag=!ca.first_lexica] run function cartographer_core:lexica/first_lexica

execute if score $no_lexica_prompt ca.gamerule matches 0 run tellraw @s [{"text":"❰ ","color":"green","bold":true,"italic":false},{"text":"Arcane Notes ","color":"#8AFFEB","italic":false},{"text":"❱ ","color":"green","bold":true,"italic":false},{"text":"Discovered ","color":"#ACFFA6","bold":false,"italic":false},{"text":"Collapse","color":"aqua","bold":false,"italic":false,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Description: ","color":"white","italic":false},{"text":"Ranged throws that hit spawners spawn an entity that breaks the spawner over time.","color":"gray","italic":false}]}},{"text":" (Hover to Read)","color":"#ACFFA6","bold":false,"italic":false}]

execute if score $no_lexica_prompt ca.gamerule matches 0 run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.7 1.2
execute if score $no_lexica_prompt ca.gamerule matches 0 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.5
