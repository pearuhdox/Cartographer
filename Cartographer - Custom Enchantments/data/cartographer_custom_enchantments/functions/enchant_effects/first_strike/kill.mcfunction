execute if entity @s[tag=ca.used_first_strike] run function cartographer_core:helper/combat/check_combat

tag @s remove ca.no_combat

#Debug Message
tellraw @a[tag=debug,tag=ca.used_first_strike,scores={ca.resetter_check_kill=1..9}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used First Strike Kill Check.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]