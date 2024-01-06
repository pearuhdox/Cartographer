data modify block ~ ~ ~ {} merge from entity @s data.Spawner

execute store result score $spawner_time ca.wave_time run data get block ~ ~ ~ Delay

scoreboard players operation $spawner_time ca.wave_time /= $2 ca.CONSTANT

execute store result block ~ ~ ~ Delay short 1 run scoreboard players get $spawner_time ca.wave_time
