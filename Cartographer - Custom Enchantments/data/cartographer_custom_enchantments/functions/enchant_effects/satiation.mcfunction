execute if entity @s[scores={satiation=1}] run effect give @s absorption 15 0 true
execute if entity @s[scores={satiation=2}] run effect give @s absorption 15 1 true
execute if entity @s[scores={satiation=3..}] run effect give @s absorption 15 2 true

execute if entity @s[scores={satiation=1..}] run effect give @s resistance 5 0 true

#Debug Message
tellraw @a[tag=debug,scores={satiation=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Satiation.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]