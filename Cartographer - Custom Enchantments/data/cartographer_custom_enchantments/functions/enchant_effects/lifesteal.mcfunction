scoreboard players operation $lifesteal_time ca.enchant_var = @s ca.lifesteal
scoreboard players operation $lifesteal_time ca.enchant_var *= $20 ca.CONSTANT

scoreboard players operation @s ca.lifesteal_banking = $lifesteal_time ca.enchant_var

playsound minecraft:entity.witch.drink player @a[distance=..8] ~ ~ ~ 0.5 2

#Debug Message
tellraw @a[tag=debug,scores={ca.lifesteal=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Lifesteal.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]