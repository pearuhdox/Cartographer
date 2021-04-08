scoreboard players add @s flash 20

function cartographer_core:helper/randomize

scoreboard players operation @s ca.dummy = @s random

execute if score @s flash matches 21..30 if score @s ca.dummy matches ..30 run scoreboard players set @s effect_stunned 5
execute if score @s flash matches 31..40 if score @s ca.dummy matches ..40 run scoreboard players set @s effect_stunned 10
execute if score @s flash matches 41..50 if score @s ca.dummy matches ..50 run scoreboard players set @s effect_stunned 15
execute if score @s flash matches 51.. if score @s ca.dummy matches ..70 run scoreboard players set @s effect_stunned 20

particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 4 1.5

tag @e[type=#cartographer_core:hostile,tag=is_flash,distance=..12] remove is_flash

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Flash.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]