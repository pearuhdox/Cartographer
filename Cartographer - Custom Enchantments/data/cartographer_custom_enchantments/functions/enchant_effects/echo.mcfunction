execute if entity @s[scores={ca.echo=1..,ca.echo_charges=1..}] positioned ^ ^1 ^3 run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.15 5 normal
execute if entity @s[scores={ca.echo=1..,ca.echo_charges=1..}] positioned ^ ^1 ^3 run particle minecraft:enchant ~ ~1 ~ 0.2 0.2 0.2 0.5 20 normal

execute if entity @s[scores={ca.echo=1..,ca.echo_charges=0..}] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 0.5
execute if entity @s[scores={ca.echo=1..,ca.echo_charges=0..}] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 1
execute if entity @s[scores={ca.echo=1..,ca.echo_charges=0..}] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 2 2

execute if entity @s[scores={ca.echo=1..,ca.echo_charges=0..}] run scoreboard players remove @s ca.echo_charges 1
execute if entity @s[scores={ca.echo=1..,ca.echo_charges=0..}] run tag @s add ca.echo_charge_taken
execute if entity @s[scores={ca.echo=1..,ca.echo_charges=-1}] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 2 0.5

tag @a[scores={ca.ui_location=1,ca.echo=1..}] remove showing_echo


#Debug Message
tellraw @a[tag=debug,scores={ca.echo=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Echo.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]