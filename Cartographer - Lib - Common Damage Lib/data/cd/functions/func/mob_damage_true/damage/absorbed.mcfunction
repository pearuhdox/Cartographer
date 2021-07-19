execute store result score $md.Abs cdl.Temp run data get entity @s AbsorptionAmount 100
execute store result entity @s AbsorptionAmount float 0.01 run scoreboard players operation $md.Abs cdl.Temp -= @s cdl.Damage_Queue
