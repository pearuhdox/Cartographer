#Deal half a damage point (.25 heart)

execute store result score $md.Health cdl.Temp run data get entity @s Health 100
execute if score $md.Health cdl.Temp matches ..49 run kill @s
execute if score $md.Health cdl.Temp matches 50.. store result entity @s Health float 0.01 run scoreboard players remove $md.Health cdl.Temp 50