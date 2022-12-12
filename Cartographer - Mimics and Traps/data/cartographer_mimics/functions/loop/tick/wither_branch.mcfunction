execute store result score @s mimic_health run data get entity @s Health
execute store result bossbar cartographer:mimic value run scoreboard players get @s mimic_health
execute run bossbar set cartographer:mimic players @a[distance=..40]

execute if data entity @s {HurtTime:9s} run function cartographer_mimics:mimic/hurt_sound

execute if entity @s[tag=!enraged,scores={mimic_health=..60}] run function cartographer_mimics:mimic/enrage

scoreboard players set $mimic_alive setup 1