execute store result score @s mimic_health run data get entity @s Health
execute store result bossbar cartographer:mimic value run scoreboard players get @s mimic_health
execute run bossbar set cartographer:mimic players @a[distance=..40]

execute if data entity @s {HurtTime:9s} run function cartographer_mimics:mimic/hurt_sound

execute if entity @s[tag=!ca.enraged,scores={mimic_health=..60}] run function cartographer_mimics:mimic/enrage

execute if score $heal_time ca.mimic_var matches 120 if entity @s[tag=ca.enraged] run function cartographer_mimics:mimic/heal

scoreboard players set $mimic_alive setup 1