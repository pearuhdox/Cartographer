
execute if score @s dies.object.display.size matches 1 run data merge entity @s {transformation:[1f,0f,0f,0f,0f,1f,0f,0.09f,0f,0f,1f,0f,0f,0f,0f,1f]}
execute if score @s dies.object.display.size matches 2 run data merge entity @s {transformation:[1f,0f,0f,0f,0f,1f,0f,0.14f,0f,0f,1f,0f,0f,0f,0f,1f]}
execute if score @s dies.object.display.size matches 3 run data merge entity @s {transformation:[1f,0f,0f,0f,0f,1f,0f,0.19f,0f,0f,1f,0f,0f,0f,0f,1f]}
execute if score @s dies.object.display.size matches 4 run data merge entity @s {transformation:[1f,0f,0f,0f,0f,1f,0f,0.25f,0f,0f,1f,0f,0f,0f,0f,1f]}

execute if score @s dies.object.display.rotation matches 1 run tp @s ~ ~ ~ 0 0
execute if score @s dies.object.display.rotation matches 2 run tp @s ~ ~ ~ 45 0
execute if score @s dies.object.display.rotation matches 3 run tp @s ~ ~ ~ 90 0
execute if score @s dies.object.display.rotation matches 4 run tp @s ~ ~ ~ 135 0
execute if score @s dies.object.display.rotation matches 5 run tp @s ~ ~ ~ 180 0
execute if score @s dies.object.display.rotation matches 6 run tp @s ~ ~ ~ -135 0
execute if score @s dies.object.display.rotation matches 7 run tp @s ~ ~ ~ -90 0
execute if score @s dies.object.display.rotation matches 8 run tp @s ~ ~ ~ -45 0
