execute if score @s ca.lifetime matches 0.. run tp @s ^ ^ ^1.25

function cartographer_mob_abilities:ability_traits/trait_warnings/projectile

execute if score @s ca.lifetime matches 0.. run particle minecraft:firework ~ ~ ~ 0 0 0 0.03 1 force

execute if score @s ca.lifetime matches 0.. run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force
execute if score @s ca.lifetime matches 0.. run particle minecraft:smoke ^ ^ ^-0.25 0 0 0 0 1 force
execute if score @s ca.lifetime matches 0.. run particle minecraft:smoke ^ ^ ^-0.5 0 0 0 0 1 force
execute if score @s ca.lifetime matches 0.. run particle minecraft:smoke ^ ^ ^-0.75 0 0 0 0 1 force
execute if score @s ca.lifetime matches 0.. run particle minecraft:smoke ^ ^ ^-1 0 0 0 0 1 force

execute if score @s ca.lifetime matches 0.. run execute unless block ~ ~ ~ #bb:can_raycast run function delta:api/explosion_particle
execute if score @s ca.lifetime matches 0.. run execute unless block ~ ~ ~ #bb:can_raycast run playsound minecraft:delta.entity.generic.explode hostile @a[distance=..8] ~ ~ ~ 1 2
execute if score @s ca.lifetime matches 0.. run execute unless block ~ ~ ~ #bb:can_raycast run kill @s


execute if score @s ca.lifetime matches 81.. run function delta:api/explosion_particle
execute if score @s ca.lifetime matches 81.. run playsound minecraft:delta.entity.generic.explode hostile @a[distance=..8] ~ ~ ~ 1 2
execute if score @s ca.lifetime matches 81.. run kill @s

execute if score @s ca.lifetime matches 0.. run execute if entity @a[dx=0] positioned ~-0.4 ~-0.4 ~-0.4 if entity @a[dx=0] positioned ~0.4 ~0.4 ~0.4 run function cartographer_mob_abilities:projectiles/behavior/needle/attack