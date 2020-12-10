scoreboard players set @s cooldown 10

scoreboard players set @s ability_charge 0

execute as @s at @s positioned ^ ^ ^3 run particle minecraft:cloud ~ ~0.2 ~ 1.2 0 1.2 0.2 50

playsound minecraft:entity.zombie.attack_iron_door hostile @a[distance=..16] ~ ~ ~ 2 1

data merge entity @s {NoAI:0}

execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2] as @a[distance=..2] at @s run tag @s add disarmed

execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2] as @a[distance=..2] at @s run scoreboard players set @s damage_queue 7
execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2] as @a[distance=..2] at @s run function cartographer_core:helper/hurt_player/by_score

execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2,limit=1] as @a[distance=..2,limit=1] at @s run execute positioned ^ ^ ^1 run summon minecraft:item ~ ~2 ~ {Glowing:1b,Age:-655340,Health:1000000,PickupDelay:60,Motion:[0.0,0.3,0.0],Tags:["disarm_drop"],Item:{id:"minecraft:stone_button",Count:1b}}

execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2,limit=1] as @a[distance=..2,limit=1] at @s run execute as @e[type=item,limit=1,sort=nearest,tag=disarm_drop] run data modify entity @s Item merge from entity @p[distance=..2] SelectedItem

execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2,limit=1] as @a[distance=..2,limit=1] at @s run execute as @e[type=item,limit=1,sort=nearest,tag=disarm_drop,nbt={Item:{id:"minecraft:stone_button",Count:1b}}] run kill @s

execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2,limit=1] as @a[distance=..2,limit=1] at @s run execute as @e[type=item,limit=1,sort=nearest,tag=disarm_drop] run tag @s remove disarm_drop

execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2,limit=1] as @a[distance=..2,limit=1] at @s run replaceitem entity @s weapon.mainhand minecraft:air 1

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..20] cooldown 4
tag @s remove tokened

schedule function cartographer_mob_abilities:helper/attacked_reset 10t