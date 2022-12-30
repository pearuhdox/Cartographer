tellraw @s {"text":"The mysterious shade grunts as to briefly acknowledge your existence, but continues glancing at his ledger.","color":"dark_aqua","italic":true}
tellraw @s [{"text":"Charon can be traded with like a villager using ","color":"gray","italic":false},{"text":"[","color":"white","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"white"}]}},{"keybind":"key.use","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"white"}]}},{"text":"]","color":"white","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"white"}]}},{"text":".","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"white"}]}}]
tellraw @s {"text":"Charon will trade back items collected from death.","color":"gray","italic":false}

tag @s add ca.first_charon_dialog
playsound minecraft:entity.vex.ambient neutral @s ~ ~ ~ 2 0.5
playsound minecraft:entity.allay.ambient_without_item neutral @s ~ ~ ~ 0.3 0.5
playsound minecraft:entity.wither.hurt neutral @s ~ ~ ~ 1 2