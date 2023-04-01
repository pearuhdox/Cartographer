
execute if score @s bbl.storage matches 2 run tp @s ~ ~-400 ~
execute if score @s bbl.storage matches 7 run tp @s ~ ~-400 ~
execute if score @s bbl.storage matches 11.. run function bb:lib/void_kill

scoreboard players add @s bbl.storage 1
