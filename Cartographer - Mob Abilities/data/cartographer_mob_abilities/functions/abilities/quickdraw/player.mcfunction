scoreboard players operation @s ca.damage_queue = $damage ca.ability_dmg

tag @s add ability_tagged
particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
tag @s add quickdrawn

execute unless score $zeph_check ca.mob_var matches 1.. unless score @s ca.delta.cooldown matches 1.. run scoreboard players set $strength delta.api.launch 7000
execute unless score $zeph_check ca.mob_var matches 1.. unless score @s ca.delta.cooldown matches 1.. run function delta:api/launch_looking
execute unless score $zeph_check ca.mob_var matches 1.. unless score @s ca.delta.cooldown matches 1.. run scoreboard players set @s ca.delta.cooldown 10