tp @s ~ ~-0.5 ~

effect give @s regeneration 5 1
effect give @s resistance 5 3
effect give @s fire_resistance 5 0
effect give @s absorption 30 0
effect give @s slow_falling 2 0
effect give @s speed 2 1

tellraw @s {"text":"Another player has revived you via your shade!","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"aqua"}]}}
tellraw @s {"text":"You have returned to your death location.","color":"yellow","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"aqua"}]}}
tellraw @s {"text":"Your items have been returned to you.","color":"yellow","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"aqua"}]}}