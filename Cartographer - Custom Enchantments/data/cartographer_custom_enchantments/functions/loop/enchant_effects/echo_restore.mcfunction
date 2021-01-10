execute if entity @s[scores={helper_kill=1..,echo=1..}] run scoreboard players add @s echo_charges 1

execute if entity @s[scores={echo=1..,echo_charges=..0}] run scoreboard players set @s echo_charges 0

execute if entity @s[scores={echo=1,echo_charges=..1}] run scoreboard players add @s echo_charges 1
execute if entity @s[scores={echo=2,echo_charges=..2}] run scoreboard players add @s echo_charges 1
execute if entity @s[scores={echo=3,echo_charges=..3}] run scoreboard players add @s echo_charges 1

playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 0.5 0.5
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 2

particle minecraft:sweep_attack ~ ~0.5 ~ 2 0 2 0.1 20 normal

tag @s[scores={ui_location=1,echo=1..}] remove showing_echo

tag @s add echo_restored