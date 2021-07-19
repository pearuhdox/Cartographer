#PLAYER / HP MOD / TRUE

execute if score @s cdl.HPM_Queue matches 1.. run scoreboard players operation @s cdl.Heal_Queue = @s cdl.HPM_Queue
execute if score @s cdl.HPM_Queue matches 1.. run function cd:func/player_heal/main
execute if score @s cdl.HPM_Queue matches 1.. run scoreboard players set @s cdl.HPM_Queue 0

execute if score @s cdl.HPM_Queue matches ..-1 run scoreboard players operation @s cdl.Damage_Queue = @s cdl.HPM_Queue
execute if score @s cdl.HPM_Queue matches ..-1 run scoreboard players operation @s cdl.Damage_Queue *= $constant.-1 cdl.Temp
execute if score @s cdl.Damage_Queue matches 1.. run function cd:func/player_damage_true/main

scoreboard players reset @s cdl.HPM_Queue