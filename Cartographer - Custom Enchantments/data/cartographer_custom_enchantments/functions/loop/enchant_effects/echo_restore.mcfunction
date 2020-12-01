execute if entity @s[scores={echo=1,echo_charges=..1}] run scoreboard players add @s echo_charges 1
execute if entity @s[scores={echo=2,echo_charges=..3}] run scoreboard players add @s echo_charges 2
execute if entity @s[scores={echo=3,echo_charges=..5}] run scoreboard players add @s echo_charges 3

execute if entity @s[scores={echo=1,echo_charges=3..}] run scoreboard players set @s echo_charges 2
execute if entity @s[scores={echo=2,echo_charges=5..}] run scoreboard players set @s echo_charges 4
execute if entity @s[scores={echo=3,echo_charges=7..}] run scoreboard players set @s echo_charges 6

playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 2 0.5
particle minecraft:sweep_attack ~ ~0.5 ~ 2 0 2 0.1 60 normal

tag @a[scores={ui_location=1,echo=1..}] remove showing_echo