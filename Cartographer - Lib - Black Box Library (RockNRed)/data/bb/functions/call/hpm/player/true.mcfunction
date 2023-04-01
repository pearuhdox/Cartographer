#PLAYER / HP MOD / TRUE

execute if score @s bbl.hpm_queue matches 1.. run scoreboard players operation @s bbl.heal_queue = @s bbl.hpm_queue
execute if score @s bbl.hpm_queue matches 1.. run function bb:lib/hpm/player_heal/main
execute if score @s bbl.hpm_queue matches 1.. run scoreboard players set @s bbl.hpm_queue 0

execute if score @s bbl.hpm_queue matches ..-1 run scoreboard players operation @s bbl.damage_queue = @s bbl.hpm_queue
execute if score @s bbl.hpm_queue matches ..-1 run scoreboard players operation @s bbl.damage_queue *= $-1 bbl.constant
execute if score @s bbl.damage_queue matches 1.. run function bb:lib/hpm/player_damage_true/main

scoreboard players reset @s bbl.hpm_queue