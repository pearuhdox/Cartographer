scoreboard players remove @s ca.raycast 1

particle minecraft:sonic_boom ~ ~ ~ 0 0 0 1 1 force

execute positioned ~ ~ ~ as @a[distance=..1.75] at @s run function cartographer_mob_abilities:passive/projectile/sonic_charge/damage
execute positioned ~ ~ ~ if entity @a[distance=..1.75] at @s run scoreboard players set @s ca.raycast 0

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #bb:can_raycast run function cartographer_mob_abilities:passive/projectile/sonic_charge/raycast