scoreboard players set $trail_target ca.mob_var 0
execute on target if entity @s[type=player] run scoreboard players set $trail_target ca.mob_var 1

execute if score $trail_target ca.mob_var matches 1.. unless score @s ability_charge matches 1.. run function cartographer_mob_abilities:passive/trail/get_data