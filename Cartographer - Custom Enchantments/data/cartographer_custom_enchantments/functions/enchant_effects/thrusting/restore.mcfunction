execute if entity @s[scores={ca.thrusting=1..,ca.thrusting_charges=..-1}] run scoreboard players set @s ca.thrusting_charges 0

execute if entity @s[scores={ca.kill_entity=1..,ca.thrusting=1..}] run scoreboard players add @s ca.thrusting_charges 1

execute if entity @s[scores={ca.kill_entity=0,ca.thrusting=1,ca.thrusting_charges=..0}] run scoreboard players add @s ca.thrusting_charges 1
execute if entity @s[scores={ca.kill_entity=0,ca.thrusting=2,ca.thrusting_charges=..1}] run scoreboard players add @s ca.thrusting_charges 1
execute if entity @s[scores={ca.kill_entity=0,ca.thrusting=3,ca.thrusting_charges=..2}] run scoreboard players add @s ca.thrusting_charges 1
execute if entity @s[scores={ca.kill_entity=0,ca.thrusting=4,ca.thrusting_charges=..3}] run scoreboard players add @s ca.thrusting_charges 1

execute if entity @s[scores={ca.thrusting=1,ca.thrusting_charges=2..}] run scoreboard players set @s ca.thrusting_charges 1
execute if entity @s[scores={ca.thrusting=2,ca.thrusting_charges=3..}] run scoreboard players set @s ca.thrusting_charges 2
execute if entity @s[scores={ca.thrusting=3,ca.thrusting_charges=4..}] run scoreboard players set @s ca.thrusting_charges 3
execute if entity @s[scores={ca.thrusting=4,ca.thrusting_charges=5..}] run scoreboard players set @s ca.thrusting_charges 4

execute if entity @s[scores={ca.thrusting=1..}] run playsound minecraft:item.armor.equip_chain player @s ~ ~ ~ 1 0.5
execute if entity @s[scores={ca.thrusting=1..}] run playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1 2

execute if entity @s[scores={ca.thrusting=1..}] run particle minecraft:effect ~ ~0.2 ~ 0.7 0.2 0.7 0.2 20

tag @s[scores={ca.thrusting=1..}] remove showing_thrusting

function #minecraft:cartographer/events/enchantments/melee/thrusting/thrusting_charge

scoreboard players set @s ca.thrusting_kills 0