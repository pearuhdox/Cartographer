scoreboard players operation @s ca.damage_queue = $aftershock ca.ability_dmg

tag @s add ability_tagged

execute unless score @s ca.delta.cooldown matches 1.. run scoreboard players set $y delta.api.launch 2000
execute unless score @s ca.delta.cooldown matches 1.. run function delta:api/launch_xyz
execute unless score @s ca.delta.cooldown matches 1.. run scoreboard players set @s ca.delta.cooldown 8