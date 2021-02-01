scoreboard players set @s cooldown 8

scoreboard players set @s ability_charge 0

scoreboard players set @s helper_raycast 13

effect give @s slowness 2 6 true
effect give @s weakness 2 9 true

data merge entity @s {NoAI:0}

playsound minecraft:block.iron_door.close hostile @a[distance=..16] ~ ~ ~ 2 0.5

execute positioned ^ ^0.75 ^1.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["hook_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-639877664,1727545686,-2004029853,-632720288],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI1MjNlMTVlOTk4NjM1NWExZjg1MWY0M2Y3NTBlZTNmMjNjODlhZTEyMzYzMWRhMjQxZjg3MmJhN2E3ODEifX19"}]}}}}]}

execute as @e[type=armor_stand,tag=hook_projectile,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=hookshot_target,limit=1,sort=nearest] feet
execute as @e[type=armor_stand,tag=hook_projectile,limit=1,sort=nearest] at @s run scoreboard players set @s helper_lifetime 1

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.

scoreboard players set @a[distance=..20] cooldown 3
tag @s remove tokened

schedule function cartographer_mob_abilities:helper/attacked_reset 10t