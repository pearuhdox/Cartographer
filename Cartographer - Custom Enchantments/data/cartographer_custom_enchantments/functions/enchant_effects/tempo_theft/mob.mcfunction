execute if entity @s[tag=is_tempo_1] run scoreboard players set @s ca.temp_warp 200
execute if entity @s[tag=is_tempo_2] run scoreboard players set @s ca.temp_warp 400
execute if entity @s[tag=is_tempo_3] run scoreboard players set @s ca.temp_warp 600

execute run particle minecraft:witch ~ ~1 ~ 0.35 0.35 0.35 0.1 20 normal
execute run playsound minecraft:entity.illusioner.prepare_blindness player @a[distance=..10] ~ ~ ~ 1 2

tag @s remove is_tempo_1
tag @s remove is_tempo_2
tag @s remove is_tempo_3

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Tempo Theft (mob).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]