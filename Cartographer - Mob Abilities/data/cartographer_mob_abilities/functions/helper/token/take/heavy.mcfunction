scoreboard players add @p[distance=..30] ca.heat 1

scoreboard players remove $heavy_avail ca.tokens 1
scoreboard players add $heavy_used ca.tokens 1

scoreboard players add $tokened_total ca.tokens 1

tag @s add tokened
tag @s add ca.takes_heavy

scoreboard players set @p ca.combat_timer 10