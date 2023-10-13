execute unless score $no_first_lexica ca.gamerule matches 1.. if entity @s[tag=!ca.first_lexica] run function cartographer_core:lexica/first_lexica

execute if score $no_lexica_prompt ca.gamerule matches 0 run tellraw @s [{"text":"❰ ","color":"green","bold":true,"italic":false},{"text":"Afflictions ","color":"#57dec0","italic":false},{"text":"❱ ","bold":true,"italic":false},{"text":"Discovered ","color":"#ACFFA6","bold":false,"italic":false},{"text":"Cloaking","color":"yellow","bold":false,"italic":false,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Description: ","color":"white","italic":false},{"text":"Affected mob is invisible, creating noises and particles around it to indicate its presence. When attacked, the remaining duration is reduced.","color":"gray","italic":false}]}},{"text":" (Hover to Read)","color":"#ACFFA6","bold":false,"italic":false}]


execute if score $no_lexica_prompt ca.gamerule matches 0 run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.7 1.2
execute if score $no_lexica_prompt ca.gamerule matches 0 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.5