scoreboard players remove @p[distance=..30] ca.heat 1

scoreboard players add $heavy_avail ca.tokens 1
scoreboard players remove $heavy_used ca.tokens 1

scoreboard players remove $tokened_total ca.tokens 1

advancement revoke @s only cartographer_mob_abilities:return_heavy_token