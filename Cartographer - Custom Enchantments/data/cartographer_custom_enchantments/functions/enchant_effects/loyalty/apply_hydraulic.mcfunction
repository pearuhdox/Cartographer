stopsound @s * minecraft:item.trident.throw

playsound minecraft:item.trident.throw player @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:item.trident.hit player @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:item.trident.return player @a[distance=..16] ~ ~ ~ 1 1

scoreboard players add @s ca.loyalty_time 30

kill @s