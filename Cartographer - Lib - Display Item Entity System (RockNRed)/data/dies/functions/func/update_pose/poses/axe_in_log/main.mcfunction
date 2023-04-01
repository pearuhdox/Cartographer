
execute if score @s dies.object.frame_facing matches 0 align y positioned ^ ^ ^ positioned ~ ~ ~ run tp @s ~ ~ ~ 0 0

execute if score @s dies.object.frame_facing matches 1 align y positioned ^ ^ ^ positioned ~ ~ ~ run tp @s ~ ~ ~ 0 0

execute if score @s dies.object.frame_facing matches 2..3 align y positioned ^ ^ ^ positioned ~ ~0.025 ~ run tp @s ~ ~ ~ 0 0
execute if score @s dies.object.frame_facing matches 4..5 align y positioned ^ ^ ^ positioned ~ ~0.025 ~ run tp @s ~ ~ ~ 0 0

function dies:func/update_rotation/main
