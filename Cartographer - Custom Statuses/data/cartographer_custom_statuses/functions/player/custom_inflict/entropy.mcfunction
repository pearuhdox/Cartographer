execute unless score $success ca.status_var matches 1.. run scoreboard players add @s ca.player_entropy 3
execute if score $success ca.status_var matches 1.. run scoreboard players set @s ca.player_entropy 0

scoreboard players set $success ca.status_var 0
tag @s remove ca.inflicting_player