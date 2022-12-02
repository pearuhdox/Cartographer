scoreboard players set @s ability_charge 0

particle minecraft:smoke ~ ~0.2 ~ 0.3 0.3 0.3 0.075 15 normal @a
execute anchored eyes run particle minecraft:smoke ^ ^ ^0.5 0.3 0.3 0.3 0.075 15 normal @a

scoreboard players set @s mob_move_red 6

playsound minecraft:item.crossbow.shoot hostile @a[distance=..15] ~ ~ ~ 1 1.5

execute anchored eyes positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/sidearm/shoot_branch

scoreboard players set @s ca.sidearm_windup 0