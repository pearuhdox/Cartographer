execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 10
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 8

scoreboard players set @s ability_charge 0

particle minecraft:falling_lava ~ ~1 ~ 0.75 0.75 0.75 0 50 normal @a
particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 1 10 normal @a
particle minecraft:poof ~ ~0.5 ~ 0.25 0 0.25 0.3 20 normal

playsound minecraft:entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 4 2
playsound minecraft:entity.blaze.hurt hostile @a[distance=..32] ~ ~ ~ 4 0.5

execute positioned ~ ~3 ~ run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"text":"Dinnerbone"}',NoGravity:1b,ShowArms:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["fireball_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1185639029,1846363053,-1787704507,813969860],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDUwMDI5MmY0YWZlNTJkMTBmMjk5ZGZiMjYwMzYzMjI4MzA0NTAzMzFlMDAzMDg0YmIyMjAzMzM1MzA2NjRlMSJ9fX0="}]}}}}]}

execute store result score @s ca.ability_dmg run attribute @s minecraft:generic.attack_damage get

scoreboard players operation @e[tag=fireball_projectile,sort=nearest,tag=!checked,limit=1] ca.ability_dmg = @s ca.ability_dmg
tag @e[tag=fireball_projectile,sort=nearest,tag=!checked,limit=1] add checked

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player
