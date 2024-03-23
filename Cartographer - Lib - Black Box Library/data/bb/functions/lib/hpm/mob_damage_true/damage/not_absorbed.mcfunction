
scoreboard players operation $md.abs bbl.storage *= $-1 bbl.constant
data modify entity @s AbsorptionAmount set value 0
execute store result entity @s Health float 0.01 run scoreboard players operation $md.health bbl.storage -= $md.abs bbl.storage
