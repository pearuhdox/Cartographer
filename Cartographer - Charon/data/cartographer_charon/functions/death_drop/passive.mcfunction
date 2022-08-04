execute unless data entity @s Item run kill @s

execute unless block ~ ~ ~ air unless block ~ ~ ~ water run data modify entity @s Fixed set value 1b
execute if block ~ ~ ~ air run data modify entity @s Fixed set value 0b
execute if block ~ ~ ~ water run data modify entity @s Fixed set value 0b