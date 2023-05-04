execute if score $do_chance ca.status_var matches 0 run scoreboard players add @s ca.player_entropy 3
execute if score $do_chance ca.status_var matches 1 run scoreboard players set @s ca.player_entropy 0

tag @s remove ca.pot_thrower