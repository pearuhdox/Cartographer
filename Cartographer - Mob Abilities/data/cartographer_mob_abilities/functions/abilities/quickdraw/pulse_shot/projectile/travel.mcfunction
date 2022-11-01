scoreboard players add @s ca.lifetime 1

execute if score @s ca.lifetime matches 1 run playsound minecraft:entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 2 1.6
execute if score @s ca.lifetime matches 1 run playsound minecraft:item.trident.throw hostile @a[distance=..20] ~ ~ ~ 1.5 0.75

execute if score @s ca.lifetime matches 0.. run tp @s ^ ^ ^1

execute positioned ^ ^0.5 ^-0.5 run function cartographer_mob_abilities:ability_traits/trait_warnings/projectile

execute if score @s ca.lifetime matches 0.. run particle minecraft:end_rod ^ ^0.5 ^-0.5 0.1 0.1 0.1 0.1 1 normal
execute if score @s ca.lifetime matches 0.. run particle minecraft:enchanted_hit ^ ^0.5 ^ 0.2 0.2 0.2 0.1 1 normal

execute if score @s ca.lifetime matches 0.. run execute unless block ~ ~0.5 ~ #bb:can_raycast run particle explosion ~ ~ ~ 0.75 0 0.75 0 1 normal
execute if score @s ca.lifetime matches 0.. run execute unless block ~ ~0.5 ~ #bb:can_raycast run playsound minecraft:entity.generic.explode hostile @a[distance=..8] ~ ~ ~ 1 1
execute if score @s ca.lifetime matches 0.. run execute unless block ~ ~0.5 ~ #bb:can_raycast run kill @s


execute if score @s ca.lifetime matches 61.. run particle explosion ~ ~0.5 ~ 0.75 0 0.75 0 1 normal
execute if score @s ca.lifetime matches 61.. run playsound minecraft:entity.generic.explode hostile @a[distance=..8] ~ ~ ~ 1 1
execute if score @s ca.lifetime matches 61.. run kill @s

execute if score @s ca.lifetime matches 0.. positioned ^ ^0.5 ^ run execute if entity @a[dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] positioned ~0.5 ~0.5 ~0.5 run function cartographer_mob_abilities:abilities/quickdraw/pulse_shot/projectile/attack