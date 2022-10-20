execute store result score $delay cage.var run data get block ~ ~1.75 ~ Delay

scoreboard players operation $delay cage.var /= $3 ca.CONSTANT

execute store result block ~ ~1.75 ~ Delay short 1 run scoreboard players add $delay cage.var 1