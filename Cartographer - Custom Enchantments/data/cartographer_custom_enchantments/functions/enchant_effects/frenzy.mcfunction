execute if entity @s[scores={ca.frenzy=1..,ca.kill_entity=1..,ca.frenz_time=0}] run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 2 1.2

execute if entity @s[scores={ca.frenzy=1,ca.kill_entity=1..}] run scoreboard players set @s ca.frenz_time 200
execute if entity @s[scores={ca.frenzy=2,ca.kill_entity=1..}] run scoreboard players set @s ca.frenz_time 400
execute if entity @s[scores={ca.frenzy=3,ca.kill_entity=1..}] run scoreboard players set @s ca.frenz_time 600
execute if entity @s[scores={ca.frenzy=4,ca.kill_entity=1..}] run scoreboard players set @s ca.frenz_time 800
execute if entity @s[scores={ca.frenzy=5,ca.kill_entity=1..}] run scoreboard players set @s ca.frenz_time 1000
execute if entity @s[scores={ca.frenzy=6,ca.kill_entity=1..}] run scoreboard players set @s ca.frenz_time 1200

#Debug Message
tellraw @a[tag=debug,scores={ca.frenzy=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Frenzy.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]