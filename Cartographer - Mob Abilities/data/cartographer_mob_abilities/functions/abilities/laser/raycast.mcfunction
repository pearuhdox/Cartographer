particle minecraft:dust 0.1 0.1 0.1 1 ~ ~ ~ 0.15 0.15 0.15 1 3 normal
particle minecraft:sonic_boom ~ ~ ~ 0.15 0.15 0.15 1 1 normal

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @a[distance=..1.5] run scoreboard players set @s ca.raycast 0

scoreboard players set $laser_detonate ca.var 0
scoreboard players set $laser_blocked ca.var 0

#function cartographer_mob_abilities:abilities/laser/calc_damage

execute if entity @s[scores={ca.raycast=1..}] if entity @a[distance=..1] run function cartographer_mob_abilities:abilities/laser/detonate
execute unless score $laser_detonate ca.var matches 1 if entity @s[scores={ca.raycast=1..}] positioned ^ ^ ^0.5 unless block ~ ~ ~ #bb:can_raycast run function cartographer_mob_abilities:abilities/laser/detonate
execute unless score $laser_detonate ca.var matches 1 if entity @s[scores={ca.raycast=0}] positioned ^ ^ ^ run function cartographer_mob_abilities:abilities/laser/detonate
execute if entity @s[scores={ca.raycast=1..}] positioned ^ ^ ^0.5 unless block ~ ~ ~ #bb:can_raycast run scoreboard players set $laser_blocked ca.var 10


execute if score $laser_detonate ca.var matches 1 as @a[distance=..4] at @s run function cartographer_mob_abilities:abilities/laser/at_player
execute if score $laser_detonate ca.var matches 1 run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

execute if score $laser_detonate ca.var matches 1 positioned as @s run tag @a remove ability_tagged

execute if entity @s[scores={ca.raycast=1..}] positioned ^ ^ ^0.5 if block ~ ~ ~ #bb:can_raycast run function cartographer_mob_abilities:abilities/laser/raycast