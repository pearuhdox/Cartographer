playsound minecraft:entity.bat.takeoff player @a[distance=..12] ~ ~ ~ 0.6 0.5
playsound minecraft:entity.generic.explode player @a[distance=..12] ~ ~ ~ 0.4 1.5

particle minecraft:poof ~ ~0.15 ~ 1 0 1 0.1 40 normal

function #minecraft:cartographer/events/enchantments/ranged/repulsion

#Do this here since it only happens if successful
scoreboard players set @s ca.repulsion_time 15