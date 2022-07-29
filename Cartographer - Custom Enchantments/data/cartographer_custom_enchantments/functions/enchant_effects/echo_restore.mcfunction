execute if entity @s[scores={ca.kill_entity=1..,ca.echo=1..,ca.echo_charges=..-1}] run scoreboard players set @s ca.echo_charges -1

execute if entity @s[scores={ca.kill_entity=1..,ca.echo=1..}] run scoreboard players add @s ca.echo_charges 1

execute if entity @s[scores={ca.echo=1,ca.echo_charges=..1}] run scoreboard players add @s ca.echo_charges 1
execute if entity @s[scores={ca.echo=2,ca.echo_charges=..2}] run scoreboard players add @s ca.echo_charges 1
execute if entity @s[scores={ca.echo=3,ca.echo_charges=..3}] run scoreboard players add @s ca.echo_charges 1

execute if entity @s[scores={ca.echo=1,ca.echo_charges=3..}] run scoreboard players set @s ca.echo_charges 2
execute if entity @s[scores={ca.echo=2,ca.echo_charges=4..}] run scoreboard players set @s ca.echo_charges 3
execute if entity @s[scores={ca.echo=3,ca.echo_charges=5..}] run scoreboard players set @s ca.echo_charges 4

execute if entity @s[scores={ca.echo=1..}] run playsound minecraft:item.armor.equip_diamond player @s ~ ~ ~ 5 0.5
execute if entity @s[scores={ca.echo=1..}] run playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 2

execute if entity @s[scores={ca.echo=1..}] run particle minecraft:enchant ~ ~0.2 ~ 0.7 0.2 0.7 0.2 100

tag @s[scores={ca.ui_location=1,ca.echo=1..}] remove showing_echo

tag @s add echo_restored

tag @s add fix_charges

#Debug Message
tellraw @a[tag=debug,scores={ca.echo=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" restoring Echo Charge.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]