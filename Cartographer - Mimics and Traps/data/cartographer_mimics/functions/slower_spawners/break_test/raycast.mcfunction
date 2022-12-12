scoreboard players remove @s ca.raycast 1

execute if block ~ ~ ~ minecraft:spawner align y run function cartographer_mimics:slower_spawners/break_test/find_spawner

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.25 run function cartographer_mimics:slower_spawners/break_test/raycast

tp 31182015-1215-1520-8514-2185111 4206900 -1 4206900