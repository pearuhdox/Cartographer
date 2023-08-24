tp @s ~ ~-0.5 ~

effect give @s invisibility 6 4
effect give @s fire_resistance 6 0
effect give @s absorption 12 1
effect give @s slow_falling 2 0 true
effect give @s speed 6 0 true
effect give @s resistance 3 4 true

tellraw @s {"text":"Another player has revived you via your shade!","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"aqua"}]}}
tellraw @s {"text":"You have returned to your death location.","color":"yellow","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"aqua"}]}}
tellraw @s {"text":"Your items have been returned to you.","color":"yellow","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"aqua"}]}}