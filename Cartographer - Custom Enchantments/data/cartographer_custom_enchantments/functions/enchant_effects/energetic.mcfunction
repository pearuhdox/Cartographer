execute if entity @s[scores={ca.energetic=1..,ca.kill_entity=1..,ca.energ_time=0}] run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 2 1.2

execute if entity @s[scores={ca.energetic=1..,ca.kill_entity=1..}] run scoreboard players set @s ca.energ_time 200
execute if entity @s[scores={ca.energetic=1..,ca.kill_entity=1..}] run scoreboard players operation @s ca.energ_time *= @s ca.energetic 

#Debug Message
tellraw @a[tag=debug,scores={ca.energetic=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Energetic.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]