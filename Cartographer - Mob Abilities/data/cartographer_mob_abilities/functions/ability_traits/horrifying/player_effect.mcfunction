playsound minecraft:entity.ghast.hurt hostile @a[distance=..16] ~ ~ ~ 0.4 0.5

effect give @s blindness 2 0

scoreboard players set @s ca.horrified 121

scoreboard players set @s cdl.Death_ID 310207
scoreboard players set @s cdl.Damage_Queue 4

function cd:lib/player/damage/normal