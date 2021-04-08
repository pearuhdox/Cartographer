execute if entity @s[scores={echo=1..,echo_charges=1..}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.15 5 normal

execute if entity @s[scores={echo=1..,echo_charges=0..}] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 0.5
execute if entity @s[scores={echo=1..,echo_charges=0..}] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 1
execute if entity @s[scores={echo=1..,echo_charges=0..}] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 2 2

execute if entity @s[scores={echo=1..,echo_charges=0..}] run scoreboard players remove @s echo_charges 1
execute if entity @s[scores={echo=1..,echo_charges=-1}] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 2 0.5

tag @a[scores={ui_location=1,echo=1..}] remove showing_echo


#Debug Message
tellraw @a[tag=debug,scores={echo=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Echo.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]