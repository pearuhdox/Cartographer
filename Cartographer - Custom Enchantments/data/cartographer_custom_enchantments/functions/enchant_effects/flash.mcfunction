function cartographer_core:helper/randomize
scoreboard players operation @s ca.dummy = @s random

execute if score @s ca.flash >= @s ca.dummy run tag @s add do_flash

execute if entity @s[tag=do_flash] if score @s ca.flash matches 1..99 run scoreboard players set @s ca.flash_time 21
execute if entity @s[tag=do_flash] if score @s ca.flash matches 100.. run scoreboard players set @s ca.flash_time 31

execute if entity @s[tag=do_flash] run particle minecraft:firework ~ ~1 ~ 0.25 0.25 0.25 0.1 10 normal
execute if entity @s[tag=do_flash] run playsound minecraft:entity.firework_rocket.launch hostile @a[distance=..16] ~ ~ ~ 1 0.75

tag @s remove do_flash
tag @s[type=#cartographer_core:hostile,tag=is_flash] remove is_flash

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Flash.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]