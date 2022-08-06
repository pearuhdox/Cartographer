execute positioned ~ -364 ~ if entity @s[distance=..300] run function cartographer_charon:death_drop/create_void

execute positioned ~ -364 ~ unless entity @s[distance=..300] at @s run function cartographer_charon:death_drop/find_spot