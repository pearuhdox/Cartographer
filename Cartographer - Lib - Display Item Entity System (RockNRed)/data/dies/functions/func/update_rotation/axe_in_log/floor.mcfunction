
data merge entity @s {transformation:[0.17364817766693041f,0.9698463103929541f,-0.17101007166283433f,0.3f,-0.984807753012208f,0.1710100716628344f,-0.030153689607045817f,-0.09999999999999998f,0f,0.17364817766693033f,0.984807753012208f,0f,0f,0f,0f,1f]}

execute if score @s dies.object.display.rotation matches 1 run tp @s ~ ~ ~ 0 0
execute if score @s dies.object.display.rotation matches 2 run tp @s ~ ~ ~ 45 0
execute if score @s dies.object.display.rotation matches 3 run tp @s ~ ~ ~ 90 0
execute if score @s dies.object.display.rotation matches 4 run tp @s ~ ~ ~ 135 0
execute if score @s dies.object.display.rotation matches 5 run tp @s ~ ~ ~ 180 0
execute if score @s dies.object.display.rotation matches 6 run tp @s ~ ~ ~ -135 0
execute if score @s dies.object.display.rotation matches 7 run tp @s ~ ~ ~ -90 0
execute if score @s dies.object.display.rotation matches 8 run tp @s ~ ~ ~ -45 0