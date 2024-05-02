execute if entity @s[scores={ca.slamming=1..,ca.slamming_charges=..-1}] run scoreboard players set @s ca.slamming_charges 0

execute if entity @s[scores={ca.kill_entity=1..,ca.slamming=1..}] run scoreboard players add @s ca.slamming_charges 1

execute if entity @s[scores={ca.kill_entity=0,ca.slamming=1,ca.slamming_charges=..0}] run scoreboard players add @s ca.slamming_charges 1
execute if entity @s[scores={ca.kill_entity=0,ca.slamming=2,ca.slamming_charges=..1}] run scoreboard players add @s ca.slamming_charges 1
execute if entity @s[scores={ca.kill_entity=0,ca.slamming=3,ca.slamming_charges=..2}] run scoreboard players add @s ca.slamming_charges 1
execute if entity @s[scores={ca.kill_entity=0,ca.slamming=4,ca.slamming_charges=..3}] run scoreboard players add @s ca.slamming_charges 1

execute if entity @s[scores={ca.slamming=1,ca.slamming_charges=2..}] run scoreboard players set @s ca.slamming_charges 1
execute if entity @s[scores={ca.slamming=2,ca.slamming_charges=3..}] run scoreboard players set @s ca.slamming_charges 2
execute if entity @s[scores={ca.slamming=3,ca.slamming_charges=4..}] run scoreboard players set @s ca.slamming_charges 3
execute if entity @s[scores={ca.slamming=4,ca.slamming_charges=5..}] run scoreboard players set @s ca.slamming_charges 4

execute if entity @s[scores={ca.slamming=1..}] run playsound minecraft:item.armor.equip_chain player @s ~ ~ ~ 1 0.5
execute if entity @s[scores={ca.slamming=1..}] run playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1 2

execute if entity @s[scores={ca.slamming=1..}] run particle minecraft:effect ~ ~0.2 ~ 0.7 0.2 0.7 0.2 20

tag @s[scores={ca.slamming=1..}] remove showing_slamming

function #minecraft:cartographer/events/enchantments/melee/slamming/slamming_charge

scoreboard players set @s ca.slamming_kills 0