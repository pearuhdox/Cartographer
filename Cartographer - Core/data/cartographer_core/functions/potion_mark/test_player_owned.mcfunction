scoreboard players set $check_player_own ca.registry 0
execute on origin if entity @s[type=player] run scoreboard players set $check_player_own ca.registry 1

execute if score $check_player_own ca.registry matches 1.. run function cartographer_core:potion_mark/create_pot_marker

scoreboard players set $active_potion ca.registry 200