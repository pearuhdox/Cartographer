execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 10
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 8

scoreboard players set @s ability_charge 0

particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 1 10 normal @a
particle minecraft:poof ~ ~0.5 ~ 0.25 0 0.25 0.3 20 normal

playsound minecraft:entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 4 2
playsound minecraft:block.anvil.land hostile @a[distance=..32] ~ ~ ~ 4 2

execute positioned ^ ^1 ^2 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1619016068,81347229,-2144501381,548124676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc1ODYzMzNiMDgzZDJlNjQ3NzA2Yjg1NzM4NGQ1ZDUxMTBhM2FlMGJjN2I3ZmQwODQwYTQ3NDFkZTlmNzNmMCJ9fX0="}]}}}}]}
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=!target,tag=trap_projectile] run tag @s add target

execute positioned ^0.3 ^1 ^2 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1619016068,81347229,-2144501381,548124676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc1ODYzMzNiMDgzZDJlNjQ3NzA2Yjg1NzM4NGQ1ZDUxMTBhM2FlMGJjN2I3ZmQwODQwYTQ3NDFkZTlmNzNmMCJ9fX0="}]}}}}]}
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~15 ~
execute as @e[tag=!target,tag=trap_projectile] run tag @s add target

execute positioned ^-0.3 ^1 ^2 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1619016068,81347229,-2144501381,548124676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc1ODYzMzNiMDgzZDJlNjQ3NzA2Yjg1NzM4NGQ1ZDUxMTBhM2FlMGJjN2I3ZmQwODQwYTQ3NDFkZTlmNzNmMCJ9fX0="}]}}}}]}
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~-15 ~
execute as @e[tag=!target,tag=trap_projectile] run tag @s add target

execute positioned ^0.6 ^1 ^2 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1619016068,81347229,-2144501381,548124676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc1ODYzMzNiMDgzZDJlNjQ3NzA2Yjg1NzM4NGQ1ZDUxMTBhM2FlMGJjN2I3ZmQwODQwYTQ3NDFkZTlmNzNmMCJ9fX0="}]}}}}]}
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~30 ~
execute as @e[tag=!target,tag=trap_projectile] run tag @s add target

execute positioned ^-0.6 ^1 ^2 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1619016068,81347229,-2144501381,548124676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc1ODYzMzNiMDgzZDJlNjQ3NzA2Yjg1NzM4NGQ1ZDUxMTBhM2FlMGJjN2I3ZmQwODQwYTQ3NDFkZTlmNzNmMCJ9fX0="}]}}}}]}
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~-30 ~
execute as @e[tag=!target,tag=trap_projectile] run tag @s add target

execute store result score @s ca.ability_dmg run attribute @s minecraft:generic.attack_damage get

tp @s ~ ~ ~ facing entity @p feet
function cartographer_core:helper/push

scoreboard players operation @e[tag=trap_projectile,sort=nearest,tag=!checked,limit=5] ca.ability_dmg = @s ca.ability_dmg
tag @e[tag=trap_projectile,sort=nearest,tag=!checked,limit=5] add checked

execute unless entity @a[distance=11..20] as @e[tag=target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~ ~2
execute if entity @a[distance=11..20] as @e[tag=target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~ ~3
#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player
