execute store result score $layer_find cage.var run clone ~ ~ ~ ~65 ~ ~65 ~ ~ ~ filtered spawner move

execute if score $layer_find cage.var matches 1.. run scoreboard players set $row cage.var 0
execute if score $layer_find cage.var matches 1.. run function cartographer_charon:cage/create_cage/row

scoreboard players set $layer_find cage.var 0

scoreboard players add $layer cage.var 1

execute unless score $layer cage.var matches 65.. positioned ~ ~1 ~ run function cartographer_charon:cage/create_cage/layer