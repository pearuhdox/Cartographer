scoreboard players set $is_players ca.mob_var 0
execute on origin if entity @s[type=player] run scoreboard players set $is_players ca.mob_var 1

execute if score $is_players ca.mob_var matches 1.. run function cartographer_custom_statuses:inflict/create_pot_marker

tag @s add ca.proj_custom_check
