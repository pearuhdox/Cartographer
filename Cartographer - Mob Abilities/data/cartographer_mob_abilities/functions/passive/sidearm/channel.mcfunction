scoreboard players add @s ca.sidearm_windup 1

execute if score @s ca.sidearm_windup matches 1..11 run particle minecraft:smoke ~ ~0.2 ~ 0.3 0.3 0.3 0.1 4 normal

execute if score @s ca.sidearm_windup matches 2 run playsound minecraft:item.crossbow.loading_start hostile @a[distance=..15] ~ ~ ~ 2 2
execute if score @s ca.sidearm_windup matches 5 run playsound minecraft:item.crossbow.loading_middle hostile @a[distance=..15] ~ ~ ~ 2 2
execute if score @s ca.sidearm_windup matches 8 run playsound minecraft:item.crossbow.loading_end hostile @a[distance=..15] ~ ~ ~ 2 2

execute if score @s ca.sidearm_windup matches 11.. run function cartographer_mob_abilities:passive/sidearm/cast