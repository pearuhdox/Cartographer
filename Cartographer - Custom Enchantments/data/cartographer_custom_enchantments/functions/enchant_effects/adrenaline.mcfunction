execute if entity @s[scores={ca.adrenaline=1..,ca.kill_entity=1..,ca.adren_time=0}] run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 2 1.2

execute if entity @s[scores={ca.adrenaline=1,ca.kill_entity=1..}] run scoreboard players set @s ca.adren_time 200
execute if entity @s[scores={ca.adrenaline=2,ca.kill_entity=1..}] run scoreboard players set @s ca.adren_time 400
execute if entity @s[scores={ca.adrenaline=3,ca.kill_entity=1..}] run scoreboard players set @s ca.adren_time 600
execute if entity @s[scores={ca.adrenaline=4,ca.kill_entity=1..}] run scoreboard players set @s ca.adren_time 800
execute if entity @s[scores={ca.adrenaline=5,ca.kill_entity=1..}] run scoreboard players set @s ca.adren_time 1000
execute if entity @s[scores={ca.adrenaline=6,ca.kill_entity=1..}] run scoreboard players set @s ca.adren_time 1200

#Debug Message
tellraw @a[tag=debug,scores={ca.adrenaline=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Adrenaline.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]