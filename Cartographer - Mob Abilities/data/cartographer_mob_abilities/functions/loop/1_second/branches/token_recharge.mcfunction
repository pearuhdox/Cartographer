execute as @a at @s if score @s ca.heat matches 1.. run function cartographer_mob_abilities:loop/1_second/branches/token_heat

scoreboard players set $timer ca.tokens 0