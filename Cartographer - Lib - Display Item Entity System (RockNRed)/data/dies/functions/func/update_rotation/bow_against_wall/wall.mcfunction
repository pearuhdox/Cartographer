
data merge entity @s {transformation:[0.7071067811865476f,0.6408563820557884f,0.29883623873011983f,0f,-0.7071067811865475f,0.6408563820557885f,0.29883623873011983f,0.475f,0f,-0.42261826174069944f,0.9063077870366499f,0.2f,0f,0f,0f,1f]}

execute if score @s dies.object.display.rotation matches 1 run tp @s ~ ~ ~ 0 0
execute if score @s dies.object.display.rotation matches 2 run tp @s ~ ~ ~ 45 0
execute if score @s dies.object.display.rotation matches 3 run tp @s ~ ~ ~ 90 0
execute if score @s dies.object.display.rotation matches 4 run tp @s ~ ~ ~ 135 0
execute if score @s dies.object.display.rotation matches 5 run tp @s ~ ~ ~ 180 0
execute if score @s dies.object.display.rotation matches 6 run tp @s ~ ~ ~ -135 0
execute if score @s dies.object.display.rotation matches 7 run tp @s ~ ~ ~ -90 0
execute if score @s dies.object.display.rotation matches 8 run tp @s ~ ~ ~ -45 0
