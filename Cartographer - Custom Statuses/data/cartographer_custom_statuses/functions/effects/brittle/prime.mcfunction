scoreboard players set @s ca.brittle_stored 0
scoreboard players set @s ca.effect_brittle_duration 0
tag @s remove ca.brittle_warmup
scoreboard players set @s ca.brittle_cdl 211

playsound minecraft:entity.elder_guardian.hurt hostile @a[distance=..12] ~ ~ ~ 1.5 2
playsound minecraft:entity.elder_guardian.hurt hostile @a[distance=..12] ~ ~ ~ 1.5 2

particle minecraft:dust_color_transition 0.894 0.412 0.294 1 0.8 0.8 0.8 ~ ~1 ~ 0.25 0.4 0.25 0 20 normal
particle minecraft:dust_color_transition 0.894 0.412 0.294 1.5 0.8 0.8 0.8 ~ ~1 ~ 0.25 0.4 0.25 0 20 normal
particle minecraft:crimson_spore ~ ~1 ~ 0.1 0.2 0.1 1 20 normal
particle minecraft:flash ~ ~1 ~ 0.1 0.2 0.1 1 1 force

execute on passengers if entity @s[type=marker,tag=ca.death_marker] run kill @s