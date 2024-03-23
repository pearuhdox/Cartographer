
execute store result score $md.abs bbl.storage run data get entity @s AbsorptionAmount 100
execute store result entity @s AbsorptionAmount float 0.01 run scoreboard players operation $md.abs bbl.storage -= @s bbl.damage_queue
