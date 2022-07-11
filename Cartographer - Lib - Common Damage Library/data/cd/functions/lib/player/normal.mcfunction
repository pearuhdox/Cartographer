#PLAYER / HP MOD / NORMAL

execute if score @s cdl.hpm_queue matches 1.. run scoreboard players operation @s cdl.heal_queue = @s cdl.hpm_queue
execute if score @s cdl.hpm_queue matches 1.. run function cd:func/player_heal/main
execute if score @s cdl.hpm_queue matches 1.. run scoreboard players set @s cdl.hpm_queue 0

execute if score @s cdl.hpm_queue matches ..-1 run scoreboard players operation @s cdl.damage_queue = @s cdl.hpm_queue
execute if score @s cdl.hpm_queue matches ..-1 run scoreboard players operation @s cdl.damage_queue *= $constant.-1 cdl.temp
execute if score @s cdl.damage_queue matches 1.. run function cd:func/player_damage_normal/main

scoreboard players reset @s cdl.hpm_queue