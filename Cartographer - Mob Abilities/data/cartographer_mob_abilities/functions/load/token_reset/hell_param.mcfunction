scoreboard players set $cooldown ca.tokens 3

scoreboard players set $heavy_avail ca.tokens 2
scoreboard players operation $heavy_avail ca.tokens *= $players ca.tokens

scoreboard players set $light_avail ca.tokens 4
scoreboard players operation $light_avail ca.tokens *= $players ca.tokens

scoreboard players set $light_used ca.tokens 0