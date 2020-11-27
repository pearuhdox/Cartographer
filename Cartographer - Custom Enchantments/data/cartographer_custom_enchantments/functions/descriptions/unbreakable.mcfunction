tellraw @p [{"text":"❰ ","color":"gold","bold":true,"italic":false},{"text":"Arcane Notes ","color":"#8AFFEB","italic":false},{"text":"❱ ","bold":true,"italic":false},{"text":"Unbreakable","color":"aqua","bold":false,"italic":false,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Description: ","color":"white","italic":false},{"text":"This item has infinite durability, and does not take durability damage.","color":"gray","italic":false}]}},{"text":" has been discovered!","color":"#FFE0A3","bold":false,"italic":false}]
tellraw @p {"text":"Hover over the enchant in chat to see its description!","color":"#FFE0A3","italic":false}
tellraw @p {"text":"Open Advancements to see Arcane Notes!","color":"#FFE0A3","italic":false}
execute as @p at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1 1.2
execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
