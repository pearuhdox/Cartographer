tellraw @p[scores={no_hndbk_pmpt=0}] [{"text":"❰ ","color":"green","bold":true,"italic":false},{"text":"Afflictions ","color":"#CC73FF","italic":false},{"text":"❱ ","bold":true,"italic":false},{"text":"Infection","color":"yellow","bold":false,"italic":false,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Description: ","color":"white","italic":false},{"text":"Afflicted takes damage every second. They are also slowed and weakened depending on how much health they are missing. When they die, the effect is spread to un-infected enemies.","color":"gray","italic":false}]}},{"text":" has been discovered!","color":"#ACFFA6","bold":false,"italic":false}]
tellraw @p[scores={no_hndbk_pmpt=0}] {"text":"Hover over the status name in chat to see its description!","color":"#ACFFA6","italic":false}
tellraw @p[scores={no_hndbk_pmpt=0}] {"text":"Open Advancements to see Lexica tabs.","color":"#ACFFA6","italic":false}

execute if data entity @s Inventory[{tag:{Lexica:1}}] run tellraw @s[scores={no_hndbk_pmpt=0}] {"text":"[Click to open the corresponding Lexica Cartographia page]","color":"light_purple","italic":false,"clickEvent":{"action":"run_command","value":"/function cartographer_custom_statuses:lexica_calls/pages/category/infection"}}

execute as @p[scores={no_hndbk_pmpt=0}] at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1 1.2

execute as @p[scores={no_hndbk_pmpt=0}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5