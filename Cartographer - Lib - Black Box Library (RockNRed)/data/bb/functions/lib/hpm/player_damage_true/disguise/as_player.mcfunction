
scoreboard players remove @s bbl.damage_timer 1
execute if score @s bbl.damage_timer matches 4 run function bb:lib/hpm/player_damage_true/disguise/as_player_branch

execute if score @s bbl.damage_timer matches 1.. run schedule function bb:lib/hpm/player_damage_true/disguise/loop 1t
