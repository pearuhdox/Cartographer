execute on passengers on passengers on passengers on passengers on passengers run data merge entity @s {interpolation_duration:8,start_interpolation:0,transformation:[0.020f, 0.000f, 0.000f,-0.010f,0.000f, 0.020f, 0.000f,-0.010f,0.000f, 0.000f, 0.020f,-0.010f,0.000f, 0.000f, 0.000f,1.000f]}


particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 force

playsound minecraft:entity.warden.sonic_boom block @a[distance=..16] ~ ~ ~ 0.35 2


tag @s remove no_pickup

tag @s remove ca.blocked