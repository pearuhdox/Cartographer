#Increase anger score by 1. Play particles and sounds.
scoreboard players add @s mimic_anger 1

playsound minecraft:entity.evoker_fangs.attack hostile @p[distance=..6] ~ ~ ~ 0.3 2
particle minecraft:crit ~ ~0.5 ~ 0.4 0.4 0.4 0.2 5 normal
