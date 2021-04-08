execute if entity @s[scores={committed=1}] run effect give @e[type=!player,distance=..5,nbt=!{HurtTime:0s}] bad_omen 4 0
execute if entity @s[scores={committed=2}] run effect give @e[type=!player,distance=..5,nbt=!{HurtTime:0s}] bad_omen 4 1
execute if entity @s[scores={committed=3}] run effect give @e[type=!player,distance=..5,nbt=!{HurtTime:0s}] bad_omen 4 2

#Debug Message
tellraw @a[tag=debug,scores={committed=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Committed.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]