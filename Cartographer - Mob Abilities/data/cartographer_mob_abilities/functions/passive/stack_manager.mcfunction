attribute @s minecraft:generic.attack_damage modifier remove 2-18-21-20-0
execute if score @s ca.brutal_stacks matches 1 run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-0 "brutality" 0.1 multiply
execute if score @s ca.brutal_stacks matches 2 run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-0 "brutality" 0.2 multiply
execute if score @s ca.brutal_stacks matches 3 run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-0 "brutality" 0.3 multiply
execute if score @s ca.brutal_stacks matches 4 run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-0 "brutality" 0.4 multiply
execute if score @s ca.brutal_stacks matches 5 run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-0 "brutality" 0.5 multiply
execute if score @s ca.brutal_stacks matches 6 run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-0 "brutality" 0.6 multiply
execute if score @s ca.brutal_stacks matches 7 run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-0 "brutality" 0.7 multiply
execute if score @s ca.brutal_stacks matches 8 run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-0 "brutality" 0.8 multiply
execute if score @s ca.brutal_stacks matches 9 run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-0 "brutality" 0.9 multiply
execute if score @s ca.brutal_stacks matches 10.. run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-0 "brutality" 1.0 multiply

attribute @s minecraft:generic.movement_speed modifier remove 18-5-11-5-0
execute if score @s ca.relent_stacks matches 1 run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-0 "unrelenting" 0.05 multiply
execute if score @s ca.relent_stacks matches 2 run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-0 "unrelenting" 0.1 multiply
execute if score @s ca.relent_stacks matches 3 run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-0 "unrelenting" 0.15 multiply
execute if score @s ca.relent_stacks matches 4 run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-0 "unrelenting" 0.2 multiply
execute if score @s ca.relent_stacks matches 5 run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-0 "unrelenting" 0.25 multiply
execute if score @s ca.relent_stacks matches 6 run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-0 "unrelenting" 0.3 multiply
execute if score @s ca.relent_stacks matches 7 run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-0 "unrelenting" 0.35 multiply
execute if score @s ca.relent_stacks matches 8 run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-0 "unrelenting" 0.4 multiply
execute if score @s ca.relent_stacks matches 9 run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-0 "unrelenting" 0.45 multiply
execute if score @s ca.relent_stacks matches 10.. run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-0 "unrelenting" 0.5 multiply

execute as @s[scores={ca.brutal_stacks=1..}] run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute as @s[scores={ca.relent_stacks=1..}] run particle minecraft:dust 0.796 1 0.957 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute as @s[scores={ca.sacrifice_stacks=1..}] run particle minecraft:dust 0.941 0.753 0.353 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal

tag @s add ca.stacks_managed