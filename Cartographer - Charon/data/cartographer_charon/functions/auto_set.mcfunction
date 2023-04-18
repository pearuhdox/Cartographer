playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 0.5 2
tellraw @a {"text":"No death mode selected. Auto selecting Death Drop!","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","italic":false}]}}
scoreboard players set $death_drop charon.gmr 1