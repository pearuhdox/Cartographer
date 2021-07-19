stopsound @a[distance=..8] * minecraft:enchant.thorns.hit

scoreboard players remove @s cdl.Damage_Timer 1
execute if score @s cdl.Damage_Timer matches 4 run function cd:func/player_damage_normal/disguise/as_player_branch

execute if score @s cdl.Damage_Timer matches 1.. run schedule function cd:func/player_damage_normal/disguise/loop 1t