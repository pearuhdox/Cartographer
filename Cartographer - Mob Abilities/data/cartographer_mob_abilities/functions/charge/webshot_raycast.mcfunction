particle minecraft:block minecraft:cobweb ~ ~ ~ 0.3 0.3 0.3 0 30 normal

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:charge/webshot_raycast