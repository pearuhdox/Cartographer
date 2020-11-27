tellraw @p [{"text":"❰ ","color":"gold","bold":true,"italic":false},{"text":"Afflictions and Maladies ","color":"#FFE0A3","italic":false},{"text":"❱ ","bold":true,"italic":false},{"text":"Blindness","color":"yellow","bold":false,"italic":false,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Description: ","color":"white","italic":false},{"text":"An enemy afflicted with Blindness has a greatly reduced follow and sight range.","color":"gray","italic":false}]}},{"text":" has been discovered!","color":"#FFE0A3","bold":false,"italic":false}]
tellraw @p {"text":"Hover over the enchant in chat to see its description!","color":"#FFE0A3","italic":false}
tellraw @p {"text":"Open Advancements to see Afflictions and Maladies!","color":"#FFE0A3","italic":false}
execute as @p at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1 1.2
execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5