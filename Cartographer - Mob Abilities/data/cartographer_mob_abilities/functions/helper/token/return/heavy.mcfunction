scoreboard players remove @p[distance=..30] ca.heat 1

scoreboard players add $heavy_avail ca.tokens 1
scoreboard players remove $heavy_used ca.tokens 1

scoreboard players remove $tokened_total ca.tokens 1

execute if entity @s[advancements={cartographer_mob_abilities:return_heavy_token=true}] run function cartographer_core:helper/combat/check_combat

advancement revoke @s only cartographer_mob_abilities:return_heavy_token