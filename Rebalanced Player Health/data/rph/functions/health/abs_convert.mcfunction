execute store result score $convert rph.absorption run data get entity @s AbsorptionAmount 100
scoreboard players operation @s rph.absorption += $convert rph.absorption
scoreboard players set $convert rph.absorption 0

effect clear @s absorption