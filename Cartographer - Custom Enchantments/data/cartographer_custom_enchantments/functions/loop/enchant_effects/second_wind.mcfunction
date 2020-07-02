playsound minecraft:block.respawn_anchor.deplete player @a[distance=..16] ~ ~ ~ 5 1.5

particle minecraft:soul ~ ~0.5 ~ 0.75 0.1 0.75 0.3 40 normal

effect give @e[type=#cartographer_core:hostile,distance=..10] minecraft:blindness 3 0

title @s actionbar {"text":"Second Wind has activated. Fight for your life!","color":"red","bold":false,"italic":false}

scoreboard players set @s second_wind_kill 0

scoreboard players set @s second_wind_cool 0