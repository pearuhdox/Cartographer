scoreboard players set $charge_bar_check ca.mob_var 1

execute on vehicle run scoreboard players set $charge_bar_check ca.mob_var 2

execute if score $charge_bar_check ca.mob_var matches 1 run kill @s

scoreboard players set $charge_bar_check ca.mob_var 0