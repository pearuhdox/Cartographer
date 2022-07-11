scoreboard players remove @s ca.heat 1

execute if score $light_used ca.tokens matches 1.. run scoreboard players add $light_avail ca.tokens 1
execute if score $light_used ca.tokens matches 1.. run scoreboard players remove $light_used ca.tokens 1

execute if score $heavy_used ca.tokens matches 1.. run scoreboard players add $heavy_avail ca.tokens 1
execute if score $heavy_used ca.tokens matches 1.. run scoreboard players remove $heavy_used ca.tokens 1

execute if score $heavy_avail ca.tokens > $heavy_max ca.tokens run scoreboard players operation $heavy_avail ca.tokens = $heavy_max ca.tokens
execute if score $light_avail ca.tokens > $light_max ca.tokens run scoreboard players operation $light_avail ca.tokens = $light_max ca.tokens