execute if entity @s[scores={ca.tempo_theft=1}] run scoreboard players set @s ca.temp_warp 200
execute if entity @s[scores={ca.tempo_theft=2}] run scoreboard players set @s ca.temp_warp 400
execute if entity @s[scores={ca.tempo_theft=3}] run scoreboard players set @s ca.temp_warp 600

execute run particle minecraft:witch ~ ~1 ~ 0.35 0.35 0.35 0.1 20 normal
execute run playsound minecraft:entity.illusioner.prepare_blindness player @a[distance=..10] ~ ~ ~ 1 2

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Tempo Theft (player).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]