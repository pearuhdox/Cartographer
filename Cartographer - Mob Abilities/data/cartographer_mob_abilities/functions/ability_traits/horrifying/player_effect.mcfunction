playsound minecraft:entity.ghast.hurt hostile @a[distance=..16] ~ ~ ~ 0.4 0.5

effect give @s blindness 2 0

scoreboard players set @s ca.horrified 31

scoreboard players set @s[tag=!no_cdl_msg] cdl.Death_ID 310207
tag @s remove no_cdl_msg
scoreboard players set @s cdl.Damage_Queue 4

function cd:lib/player/damage/normal