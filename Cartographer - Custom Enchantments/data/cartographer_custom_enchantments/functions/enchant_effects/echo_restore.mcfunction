execute if entity @s[scores={helper_kill=1..,echo=1..}] run scoreboard players add @s echo_charges 2

execute if entity @s[scores={echo=1,echo_charges=..1}] run scoreboard players add @s echo_charges 1
execute if entity @s[scores={echo=2,echo_charges=..2}] run scoreboard players add @s echo_charges 1
execute if entity @s[scores={echo=3,echo_charges=..3}] run scoreboard players add @s echo_charges 1

execute if entity @s[scores={echo=1,echo_charges=3..}] run scoreboard players set @s echo_charges 2
execute if entity @s[scores={echo=2,echo_charges=4..}] run scoreboard players set @s echo_charges 3
execute if entity @s[scores={echo=3,echo_charges=5..}] run scoreboard players set @s echo_charges 4

execute if entity @s[scores={echo=1..}] run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 0.5 0.5
execute if entity @s[scores={echo=1..}] run playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 2

execute if entity @s[scores={echo=1..}] run particle minecraft:sweep_attack ~ ~0.5 ~ 2 0 2 0.1 20 normal

tag @s[scores={ui_location=1,echo=1..}] remove showing_echo

tag @s add echo_restored

tag @s add fix_charges

#Debug Message
tellraw @a[tag=debug,scores={echo=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" restoring Echo Charge.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]