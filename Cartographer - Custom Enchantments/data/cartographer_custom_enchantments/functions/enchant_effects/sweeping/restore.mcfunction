execute if entity @s[scores={ca.sweeping=1..,ca.sweeping_charges=..-1}] run scoreboard players set @s ca.sweeping_charges 0

execute if entity @s[scores={ca.kill_entity=1..,ca.sweeping=1..}] run scoreboard players add @s ca.sweeping_charges 1

execute if entity @s[scores={ca.kill_entity=0,ca.sweeping=1,ca.sweeping_charges=..0}] run scoreboard players add @s ca.sweeping_charges 1
execute if entity @s[scores={ca.kill_entity=0,ca.sweeping=2,ca.sweeping_charges=..1}] run scoreboard players add @s ca.sweeping_charges 1
execute if entity @s[scores={ca.kill_entity=0,ca.sweeping=3,ca.sweeping_charges=..2}] run scoreboard players add @s ca.sweeping_charges 1
execute if entity @s[scores={ca.kill_entity=0,ca.sweeping=4,ca.sweeping_charges=..3}] run scoreboard players add @s ca.sweeping_charges 1
execute if entity @s[scores={ca.kill_entity=0,ca.sweeping=5,ca.sweeping_charges=..4}] run scoreboard players add @s ca.sweeping_charges 1

execute if entity @s[scores={ca.sweeping=1,ca.sweeping_charges=2..}] run scoreboard players set @s ca.sweeping_charges 1
execute if entity @s[scores={ca.sweeping=2,ca.sweeping_charges=3..}] run scoreboard players set @s ca.sweeping_charges 2
execute if entity @s[scores={ca.sweeping=3,ca.sweeping_charges=4..}] run scoreboard players set @s ca.sweeping_charges 3
execute if entity @s[scores={ca.sweeping=4,ca.sweeping_charges=5..}] run scoreboard players set @s ca.sweeping_charges 4
execute if entity @s[scores={ca.sweeping=5,ca.sweeping_charges=6..}] run scoreboard players set @s ca.sweeping_charges 5

execute if entity @s[scores={ca.sweeping=1..}] run playsound minecraft:item.armor.equip_chain player @s ~ ~ ~ 1 0.5
execute if entity @s[scores={ca.sweeping=1..}] run playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1 2

execute if entity @s[scores={ca.sweeping=1..}] run particle minecraft:effect ~ ~0.2 ~ 0.7 0.2 0.7 0.2 20

tag @s[scores={ca.sweeping=1..}] remove showing_sweeping

function #minecraft:cartographer/events/enchantments/melee/sweeping/sweeping_charge

scoreboard players set @s ca.sweeping_kills 0