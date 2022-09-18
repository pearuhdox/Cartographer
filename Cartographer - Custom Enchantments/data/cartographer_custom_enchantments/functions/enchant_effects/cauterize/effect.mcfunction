scoreboard players set $time ca.brittle_time 0

execute store result score $time ca.brittle_time run data get entity @s Fire
execute store result score $amt ca.cauter_dmg run data get entity @s Fire

scoreboard players add $time ca.brittle_time 40
scoreboard players remove $amt ca.cauter_dmg 20

#Do the damage here.
scoreboard players operation @s ca.brittle_time = $time ca.brittle_time
scoreboard players operation @s ca.cauter_dmg = $amt ca.cauter_dmg

scoreboard players set $brittled ca.cauterize 1

execute if score $ranged ca.cauterize matches 1.. run scoreboard players set @s ca.cau_prv_time -1
execute if score $ranged ca.cauterize matches 1.. run tag @s add stop_track_fire

#Add the tag for brittle to cleanse fire (1 tick delay).
tag @s add cleanse_fire