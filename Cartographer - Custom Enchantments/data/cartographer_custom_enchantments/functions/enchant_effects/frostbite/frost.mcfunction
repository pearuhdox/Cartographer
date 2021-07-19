execute if entity @s[scores={ca.frost_time=2..,ca.frost_tier=1}] run attribute @s minecraft:generic.movement_speed modifier add 31-20-618-1519-2001 "frost_1" -0.1 multiply
execute if entity @s[scores={ca.frost_time=2..,ca.frost_tier=2}] run attribute @s minecraft:generic.movement_speed modifier add 31-20-618-1519-2001 "frost_2" -0.2 multiply
execute if entity @s[scores={ca.frost_time=2..,ca.frost_tier=3}] run attribute @s minecraft:generic.movement_speed modifier add 31-20-618-1519-2001 "frost_3" -0.3 multiply
execute if entity @s[scores={ca.frost_time=2..,ca.frost_tier=4}] run attribute @s minecraft:generic.movement_speed modifier add 31-20-618-1519-2001 "frost_4" -0.4 multiply
execute if entity @s[scores={ca.frost_time=2..,ca.frost_tier=5}] run attribute @s minecraft:generic.movement_speed modifier add 31-20-618-1519-2001 "frost_5" -0.5 multiply

execute if entity @s[scores={ca.frost_time=1,ca.frost_tier=1}] run attribute @s minecraft:generic.movement_speed modifier remove 31-20-618-1519-2001
execute if entity @s[scores={ca.frost_time=1,ca.frost_tier=2}] run attribute @s minecraft:generic.movement_speed modifier remove 31-20-618-1519-2001
execute if entity @s[scores={ca.frost_time=1,ca.frost_tier=3}] run attribute @s minecraft:generic.movement_speed modifier remove 31-20-618-1519-2001
execute if entity @s[scores={ca.frost_time=1,ca.frost_tier=4}] run attribute @s minecraft:generic.movement_speed modifier remove 31-20-618-1519-2001
execute if entity @s[scores={ca.frost_time=1,ca.frost_tier=5}] run attribute @s minecraft:generic.movement_speed modifier remove 31-20-618-1519-2001

particle minecraft:dust_color_transition 0.565 0.933 1 1 1 1 0.75 ~ ~1 ~ 0.3 0.3 0.3 0 1 normal

execute if entity @s[scores={ca.frost_time=1}] run scoreboard players set @s ca.frost_tier 0
scoreboard players remove @s ca.frost_time 1