data modify entity @s Fire set value 0
tag @s remove ca.cleanse_fire
scoreboard players set @s ca.cau_prv_time 0

playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..10] ~ ~ ~ 0.5 0.5
playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..10] ~ ~ ~ 0.5 1
playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..10] ~ ~ ~ 0.5 1.5
playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..10] ~ ~ ~ 0.5 2

particle minecraft:dust_color_transition 0.325 0 0 1 1 1 0.1 ~ ~1 ~ 0.3 0.3 0.3 10 1 normal
particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.1 1 normal