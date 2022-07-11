particle firework ~ ~1 ~ 0 0 0 0.2 1 normal

scoreboard players operation @s ca.effect_stun = @e[type=#bb:arrow,sort=nearest,limit=1,scores={ca.flash=1..}] ca.flash
particle flash ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..24] ~ ~ ~ 5 2

tag @s[type=#bb:hostile,tag=is_flash] remove is_flash

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Flash.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]