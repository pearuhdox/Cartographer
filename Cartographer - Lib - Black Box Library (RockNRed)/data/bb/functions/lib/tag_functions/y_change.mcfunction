
#Precise
scoreboard players operation @s bbl.y_past.pre = $y_current.pre bbl.storage
execute store result score $y_current.pre bbl.storage run data get entity @s Pos[1] 100
scoreboard players operation @s bbl.y_past.pre -= $y_current.pre bbl.storage

execute if score @s bbl.y_past.pre matches 1.. run function #minecraft:bbl/y_change/falling
execute if score @s bbl.y_past.pre matches ..-1 run function #minecraft:bbl/y_change/ascending

#By block
scoreboard players operation @s bbl.y_past.bck = $y_current.bck bbl.storage
execute store result score $y_current.bck bbl.storage run data get entity @s Pos[1]

execute if score @s bbl.y_past.bck > $y_current.bck bbl.storage run function #minecraft:bbl/y_change/down_1
execute if score @s bbl.y_past.bck < $y_current.bck bbl.storage run function #minecraft:bbl/y_change/up_1
