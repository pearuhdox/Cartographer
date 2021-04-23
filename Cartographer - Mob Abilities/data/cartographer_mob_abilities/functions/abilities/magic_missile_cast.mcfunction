execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 10
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 8

scoreboard players set @s ability_charge 0

particle minecraft:falling_obsidian_tear ~ ~1 ~ 0.75 0.75 0.75 0 50 normal @a
particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 1 20 normal @a
particle minecraft:poof ~ ~0.5 ~ 0.25 0 0.25 0.3 20 normal

playsound minecraft:entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 4 2
playsound minecraft:entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 4 2

execute positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["magic_missile_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2039807386,-1704571837,-1153980447,-93675964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NzhmNzJlYWNhNDUyZWUwMTM4OTNlMmJjNTNkOGQ1YjFmY2E0NGNmZTI3MDM4NjViMDU0YzI4YTNkZDcifX19"}]}}}}]}
tp @e[type=armor_stand,tag=magic_missile_projectile,distance=..1,limit=1,sort=nearest] @s
execute as @e[type=armor_stand,tag=magic_missile_projectile,distance=..1,limit=1,sort=nearest] at @s run tp @s ~ ~2 ~ ~ -90

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove attacking
tag @s remove tokened