scoreboard players operation $md.Abs cdl.Temp *= $constant.-1 cdl.Temp
data modify entity @s AbsorptionAmount set value 0
execute store result entity @s Health float 0.01 run scoreboard players operation $md.Health cdl.Temp -= $md.Abs cdl.Temp