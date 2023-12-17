tp 31182015-1791-2513-1181-151800000001 @s
execute store result entity 31182015-1791-2513-1181-151800000001 Pos[0] double 0.01 run scoreboard players get @s ca.x
execute store result entity 31182015-1791-2513-1181-151800000001 Pos[1] double 0.01 run scoreboard players get @s ca.y
execute store result entity 31182015-1791-2513-1181-151800000001 Pos[2] double 0.01 run scoreboard players get @s ca.z

#execute as 31182015-1791-2513-1181-151800000001 at @s run particle block_marker barrier ~ ~ ~ 0 0 0 1 1 force

execute if score @s ca.lifetime matches 2.. on passengers run tp @s ~ ~ ~ facing entity 31182015-1791-2513-1181-151800000001 feet
execute if score @s ca.lifetime matches 2.. on passengers on passengers run tp @s ~ ~ ~ facing entity 31182015-1791-2513-1181-151800000001 feet

tp 31182015-1791-2513-1181-151800000001 4206900 0 4206900

execute store result score @s ca.x run data get entity @s Pos[0] 100
execute store result score @s ca.y run data get entity @s Pos[1] 100
execute store result score @s ca.z run data get entity @s Pos[2] 100

data modify entity @s Air set value 1b
data modify entity @s Air set value 0b