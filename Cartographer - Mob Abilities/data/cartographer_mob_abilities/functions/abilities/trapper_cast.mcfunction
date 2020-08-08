scoreboard players set @s cooldown 10

scoreboard players set @s ability_charge 0

particle minecraft:falling_lava ~ ~1 ~ 0.75 0.75 0.75 0 50 normal @a
particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 1 10 normal @a
particle minecraft:poof ~ ~0.5 ~ 0.25 0 0.25 0.3 20 normal

playsound minecraft:entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 4 2
playsound minecraft:block.anvil.land hostile @a[distance=..32] ~ ~ ~ 4 2

execute positioned ^ ^1 ^2 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1619016068,81347229,-2144501381,548124676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc1ODYzMzNiMDgzZDJlNjQ3NzA2Yjg1NzM4NGQ1ZDUxMTBhM2FlMGJjN2I3ZmQwODQwYTQ3NDFkZTlmNzNmMCJ9fX0="}]}}}}]}
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=!target,tag=trap_projectile] run tag @s add target

execute positioned ^0.3 ^1 ^2 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1619016068,81347229,-2144501381,548124676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc1ODYzMzNiMDgzZDJlNjQ3NzA2Yjg1NzM4NGQ1ZDUxMTBhM2FlMGJjN2I3ZmQwODQwYTQ3NDFkZTlmNzNmMCJ9fX0="}]}}}}]}
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=!target,tag=trap_projectile] run tag @s add target

execute positioned ^-0.3 ^1 ^2 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1619016068,81347229,-2144501381,548124676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc1ODYzMzNiMDgzZDJlNjQ3NzA2Yjg1NzM4NGQ1ZDUxMTBhM2FlMGJjN2I3ZmQwODQwYTQ3NDFkZTlmNzNmMCJ9fX0="}]}}}}]}
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~-10 ~
execute as @e[tag=!target,tag=trap_projectile] run tag @s add target

execute positioned ^0.6 ^1 ^2 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1619016068,81347229,-2144501381,548124676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc1ODYzMzNiMDgzZDJlNjQ3NzA2Yjg1NzM4NGQ1ZDUxMTBhM2FlMGJjN2I3ZmQwODQwYTQ3NDFkZTlmNzNmMCJ9fX0="}]}}}}]}
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~20 ~
execute as @e[tag=!target,tag=trap_projectile] run tag @s add target

execute positioned ^-0.6 ^1 ^2 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1619016068,81347229,-2144501381,548124676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc1ODYzMzNiMDgzZDJlNjQ3NzA2Yjg1NzM4NGQ1ZDUxMTBhM2FlMGJjN2I3ZmQwODQwYTQ3NDFkZTlmNzNmMCJ9fX0="}]}}}}]}
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~-20 ~
execute as @e[tag=!target,tag=trap_projectile] run tag @s add target

execute unless entity @a[distance=11..20] run execute as @e[tag=target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~ ~2
execute if entity @a[distance=11..20] run execute as @e[tag=target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~ ~3
#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..20] cooldown 4
tag @s remove tokened