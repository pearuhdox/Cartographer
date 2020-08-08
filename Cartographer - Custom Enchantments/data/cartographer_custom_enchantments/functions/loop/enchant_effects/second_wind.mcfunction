playsound minecraft:block.respawn_anchor.deplete player @a[distance=..16] ~ ~ ~ 5 1.5

particle minecraft:soul ~ ~0.5 ~ 0.75 0.1 0.75 0.3 40 normal

effect give @e[type=#cartographer_core:hostile,distance=..16] minecraft:blindness 2 0

scoreboard players add @s second_wind_tier 1

effect give @s[scores={second_wind_tier=1}] absorption 8 1
effect give @s[scores={second_wind_tier=2}] absorption 6 1
effect give @s[scores={second_wind_tier=3}] absorption 4 1
effect give @s[scores={second_wind_tier=4..}] absorption 2 1

title @s actionbar {"text":"Second Wind has activated!","color":"yellow","bold":false,"italic":false}

scoreboard players set @s second_wind_kill 0

scoreboard players set @s second_wind_cool 0