tag @s add ability_tagged
tag @s add ran_over

execute unless score $zeph_check ca.mob_var matches 1.. unless score @s ca.delta.cooldown matches 1.. run scoreboard players set $strength delta.api.launch 4000
execute unless score $zeph_check ca.mob_var matches 1.. unless score @s ca.delta.cooldown matches 1.. run function delta:api/launch_looking
execute unless score $zeph_check ca.mob_var matches 1.. unless score @s ca.delta.cooldown matches 1.. run scoreboard players set @s ca.delta.cooldown 10