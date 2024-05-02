execute if entity @s[scores={ca.evocation=1..,ca.evocation_charges=..-1}] run scoreboard players set @s ca.evocation_charges 0

execute if entity @s[scores={ca.kill_entity=1..,ca.evocation=1..}] run scoreboard players add @s ca.evocation_charges 1

execute if entity @s[scores={ca.kill_entity=0,ca.evocation=1,ca.evocation_charges=..0}] run scoreboard players add @s ca.evocation_charges 1
execute if entity @s[scores={ca.kill_entity=0,ca.evocation=2,ca.evocation_charges=..1}] run scoreboard players add @s ca.evocation_charges 1
execute if entity @s[scores={ca.kill_entity=0,ca.evocation=3,ca.evocation_charges=..2}] run scoreboard players add @s ca.evocation_charges 1
execute if entity @s[scores={ca.kill_entity=0,ca.evocation=4,ca.evocation_charges=..3}] run scoreboard players add @s ca.evocation_charges 1

execute if entity @s[scores={ca.evocation=1,ca.evocation_charges=2..}] run scoreboard players set @s ca.evocation_charges 1
execute if entity @s[scores={ca.evocation=2,ca.evocation_charges=3..}] run scoreboard players set @s ca.evocation_charges 2
execute if entity @s[scores={ca.evocation=3,ca.evocation_charges=4..}] run scoreboard players set @s ca.evocation_charges 3
execute if entity @s[scores={ca.evocation=4,ca.evocation_charges=5..}] run scoreboard players set @s ca.evocation_charges 4

execute if entity @s[scores={ca.evocation=1..}] run playsound minecraft:entity.evoker.prepare_summon player @s ~ ~ ~ 0.5 2
execute if entity @s[scores={ca.evocation=1..}] run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 0.5 2
execute if entity @s[scores={ca.evocation=1..}] run stopsound @s player minecraft:block.fire.extinguish

execute if entity @s[scores={ca.evocation=1..}] run particle minecraft:effect ~ ~0.2 ~ 0.7 0.2 0.7 0.2 20

tag @s[scores={ca.evocation=1..}] remove showing_evocation

function #minecraft:cartographer/events/enchantments/melee/evocation/evocation_charge

scoreboard players set @s ca.evocation_kills 0