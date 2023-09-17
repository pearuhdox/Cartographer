execute unless score @s ca.delta.cooldown matches 1.. if entity @s[tag=ca.faster_hook_drag] run scoreboard players set $strength delta.api.launch 2250
execute unless score @s ca.delta.cooldown matches 1.. unless entity @s[tag=ca.faster_hook_drag] run scoreboard players set $strength delta.api.launch 1500
execute unless score @s ca.delta.cooldown matches 1.. run function delta:api/launch_looking
execute unless score @s ca.delta.cooldown matches 1.. run scoreboard players set @s ca.delta.cooldown 1

execute if score @s ca.hooked matches 21.. run effect give @s minecraft:jump_boost 1 128 true

execute positioned ~ ~1 ~ run particle minecraft:block minecraft:chain ^ ^ ^1 0 0 0 0 4 normal
execute positioned ~ ~1 ~ run particle minecraft:block minecraft:chain ^ ^ ^2 0 0 0 0 4 normal
execute positioned ~ ~1 ~ run particle minecraft:block minecraft:chain ^ ^ ^3 0 0 0 0 4 normal
execute positioned ~ ~1 ~ run particle minecraft:block minecraft:chain ^ ^ ^4 0 0 0 0 4 normal
execute positioned ~ ~1 ~ run particle minecraft:block minecraft:chain ^ ^ ^5 0 0 0 0 4 normal