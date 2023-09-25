execute unless score $no_first_lexica ca.gamerule matches 1.. if entity @s[tag=!ca.first_lexica] run function cartographer_core:lexica/first_lexica

execute if score $no_lexica_prompt ca.gamerule matches 0 run tellraw @s [{"text":"❰ ","color":"green","bold":true,"italic":false},{"text":"Afflictions ","color":"#57dec0","italic":false},{"text":"❱ ","bold":true,"italic":false},{"text":"Discovered ","color":"#ACFFA6","bold":false,"italic":false},{"text":"Morph","color":"yellow","bold":false,"italic":false,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Description: ","color":"white","italic":false},{"text":"Affected mob enemy is temporarily turned into a chicken. This can only happen one time per enemy.","color":"gray","italic":false}]}},{"text":" (Hover to Read)","color":"#ACFFA6","bold":false,"italic":false}]

execute if data entity @s Inventory[{tag:{Lexica:1}}] if score $no_lexica_prompt ca.gamerule matches 0 run tellraw @s {"text":"[Click to open the corresponding Lexica Cartographia page]","color":"light_purple","italic":false,"clickEvent":{"action":"run_command","value":"/function cartographer_custom_statuses:lexica_calls/pages/category/morph"}}

execute if score $no_lexica_prompt ca.gamerule matches 0 run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.7 1.2

execute if score $no_lexica_prompt ca.gamerule matches 0 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.5