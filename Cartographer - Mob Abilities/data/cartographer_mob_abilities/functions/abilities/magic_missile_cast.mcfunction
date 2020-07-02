scoreboard players set @s cooldown 10

scoreboard players set @s ability_charge 0

particle minecraft:falling_obsidian_tear ~ ~1 ~ 0.75 0.75 0.75 0 50 normal @a
particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 1 20 normal @a
particle minecraft:poof ~ ~0.5 ~ 0.25 0 0.25 0.3 20 normal

playsound minecraft:entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 4 2
playsound minecraft:entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 4 2

execute positioned ^ ^2 ^1 run summon minecraft:armor_stand ~ ~ ~ {Marker:0b,NoGravity:1b,ShowArms:0b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..20] cooldown 4
tag @s remove tokened