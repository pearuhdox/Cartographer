tp @s ~ ~0.1 ~

effect give @s slow_falling 1 0 true

playsound minecraft:entity.shulker_bullet.hurt hostile @a[distance=..16] ~ ~ ~ 2 0.75
playsound minecraft:entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 1 2

particle minecraft:cloud ~ ~0.5 ~ 0.75 0 0.75 0.05 30 normal

execute unless score @s ca.delta.cooldown matches 1.. run scoreboard players set $y delta.api.launch 12000
execute unless score @s ca.delta.cooldown matches 1.. positioned ~ ~0.1 ~ run function delta:api/launch_xyz
execute unless score @s ca.delta.cooldown matches 1.. run scoreboard players set @s ca.delta.cooldown 10

tag @s remove ca.primed_zephyrous