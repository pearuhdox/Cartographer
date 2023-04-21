scoreboard players remove @s ims.raycast 1

execute if block ~ ~ ~ scaffolding align xyz positioned ~0.5 ~0.5 ~0.5 run function improved_scaffolding:place/found_scaffold

execute if score @s ims.raycast matches 1.. positioned ^ ^ ^0.5 run function improved_scaffolding:place/find_raycast