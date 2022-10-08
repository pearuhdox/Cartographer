execute store result score $row_find cage.var run clone ~ ~ ~ ~65 ~ ~ ~ ~ ~ filtered spawner move

execute if score $row_find cage.var matches 1.. run function cartographer_charon:cage/create_cage/locate

scoreboard players set $row_find cage.var 0


scoreboard players add $row cage.var 1

execute unless score $row cage.var matches 65.. positioned ~ ~ ~1 run function cartographer_charon:cage/create_cage/row