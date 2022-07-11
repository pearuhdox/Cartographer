scoreboard players add @s ca.lifetime 1

execute if score @s ca.lifetime matches 1 run playsound minecraft:entity.firework_rocket.launch hostile @a[distance=..20] ~ ~ ~ 2 1.6
execute if score @s ca.lifetime matches 1 run playsound minecraft:enchant.thorns.hit hostile @a[distance=..20] ~ ~ ~ 1.5 1.5

execute if score @s ca.lifetime matches 0.. run tp @s ^ ^ ^1.25

execute if entity @s[tag=ca.blazing] run particle flame ~ ~ ~ 0.5 0 0.5 0 1 normal
execute if entity @s[tag=ca.glacial] run particle item_snowball ~ ~ ~ 0.5 0 0.5 0 1 normal
execute if entity @s[tag=ca.horrifying] run particle dust 0.302 0.2 0.761 1 ~ ~ ~ 0.5 0 0.5 0 1 normal
execute if entity @s[tag=ca.overloading] run particle wax_off ~ ~ ~ 0.5 0 0.5 0 1 normal
execute if entity @s[tag=ca.venemous] run particle item_slime ~ ~ ~ 0.5 0 0.5 0 1 normal
execute if entity @s[tag=ca.zephyrous] run particle dust 0.7 0.7 0.8 1 ~ ~ ~ 0.5 0 0.5 0 1 normal

execute if score @s ca.lifetime matches 0.. run particle minecraft:firework ~ ~ ~ 0 0 0 0.03 1 force

execute if score @s ca.lifetime matches 0.. run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force
execute if score @s ca.lifetime matches 0.. run particle minecraft:smoke ^ ^ ^-0.25 0 0 0 0 1 force
execute if score @s ca.lifetime matches 0.. run particle minecraft:smoke ^ ^ ^-0.5 0 0 0 0 1 force
execute if score @s ca.lifetime matches 0.. run particle minecraft:smoke ^ ^ ^-0.75 0 0 0 0 1 force
execute if score @s ca.lifetime matches 0.. run particle minecraft:smoke ^ ^ ^-1 0 0 0 0 1 force

execute if score @s ca.lifetime matches 0.. run execute unless block ~ ~ ~ #bb:can_raycast run particle explosion ~ ~ ~ 0.75 0 0.75 0 1 normal
execute if score @s ca.lifetime matches 0.. run execute unless block ~ ~ ~ #bb:can_raycast run playsound minecraft:entity.generic.explode hostile @a[distance=..8] ~ ~ ~ 1 2
execute if score @s ca.lifetime matches 0.. run execute unless block ~ ~ ~ #bb:can_raycast run kill @s


execute if score @s ca.lifetime matches 81.. run particle explosion ~ ~0.25 ~ 0.75 0 0.75 0 1 normal
execute if score @s ca.lifetime matches 81.. run playsound minecraft:entity.generic.explode hostile @a[distance=..8] ~ ~ ~ 1 2
execute if score @s ca.lifetime matches 81.. run kill @s

execute if score @s ca.lifetime matches 0.. run execute if entity @a[distance=..2] run function cartographer_mob_abilities:charge/needle/projectile/attack