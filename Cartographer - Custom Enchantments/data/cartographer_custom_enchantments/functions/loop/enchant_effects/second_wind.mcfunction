playsound minecraft:block.respawn_anchor.deplete player @a[distance=..16] ~ ~ ~ 5 0.75

particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 1 100 normal

scoreboard players add @s second_wind_tier 1

effect give @s[scores={second_wind_tier=1}] absorption 8 1
effect give @s[scores={second_wind_tier=2}] absorption 6 1
effect give @s[scores={second_wind_tier=3}] absorption 4 1
effect give @s[scores={second_wind_tier=4..}] absorption 2 1

effect give @s[scores={second_wind_tier=2..}] slowness 7 0
effect give @s[scores={second_wind_tier=3..}] mining_fatigue 5 0
effect give @s[scores={second_wind_tier=4..}] weakness 3 0
effect give @s[scores={second_wind_tier=1..}] blindness 1 1

particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 force

title @s actionbar {"text":"Second Wind has activated!","color":"yellow","bold":false,"italic":false}

tag @s add life_fight

scoreboard players set @s second_wind_kill 0

scoreboard players set @s second_wind_cool 0