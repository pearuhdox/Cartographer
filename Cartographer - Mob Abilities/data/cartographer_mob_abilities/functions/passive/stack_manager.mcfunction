execute as @s[scores={brutal_stacks=1..}] run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-1 "brutal_1" 0.1 multiply_base
execute as @s[scores={brutal_stacks=2..}] run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-2 "brutal_2" 0.1 multiply_base
execute as @s[scores={brutal_stacks=3..}] run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-3 "brutal_3" 0.1 multiply_base
execute as @s[scores={brutal_stacks=4..}] run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-4 "brutal_4" 0.1 multiply_base
execute as @s[scores={brutal_stacks=5..}] run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-5 "brutal_5" 0.1 multiply_base
execute as @s[scores={brutal_stacks=6..}] run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-6 "brutal_6" 0.1 multiply_base
execute as @s[scores={brutal_stacks=7..}] run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-7 "brutal_7" 0.1 multiply_base
execute as @s[scores={brutal_stacks=8..}] run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-8 "brutal_8" 0.1 multiply_base
execute as @s[scores={brutal_stacks=9..}] run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-9 "brutal_9" 0.1 multiply_base
execute as @s[scores={brutal_stacks=10..}] run attribute @s minecraft:generic.attack_damage modifier add 2-18-21-20-10 "brutal_10" 0.1 multiply_base

execute as @s[scores={relent_stacks=1..}] run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-1 "relent_1" 0.05 multiply_base
execute as @s[scores={relent_stacks=2..}] run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-2 "relent_2" 0.05 multiply_base
execute as @s[scores={relent_stacks=3..}] run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-3 "relent_3" 0.05 multiply_base
execute as @s[scores={relent_stacks=4..}] run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-4 "relent_4" 0.05 multiply_base
execute as @s[scores={relent_stacks=5..}] run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-5 "relent_5" 0.05 multiply_base
execute as @s[scores={relent_stacks=6..}] run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-6 "relent_6" 0.05 multiply_base
execute as @s[scores={relent_stacks=7..}] run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-7 "relent_7" 0.05 multiply_base
execute as @s[scores={relent_stacks=8..}] run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-8 "relent_8" 0.05 multiply_base
execute as @s[scores={relent_stacks=9..}] run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-9 "relent_9" 0.05 multiply_base
execute as @s[scores={relent_stacks=10..}] run attribute @s minecraft:generic.movement_speed modifier add 18-5-11-5-10 "relent_10" 0.05 multiply_base

execute as @s[scores={devious_stacks=1..,cooldown=1..}] run scoreboard players add @s devious_time 30
execute as @s[scores={devious_stacks=2..,cooldown=1..}] run scoreboard players add @s devious_time 30
execute as @s[scores={devious_stacks=3..,cooldown=1..}] run scoreboard players add @s devious_time 30
execute as @s[scores={devious_stacks=4..,cooldown=1..}] run scoreboard players add @s devious_time 30
execute as @s[scores={devious_stacks=5..,cooldown=1..}] run scoreboard players add @s devious_time 30
execute as @s[scores={devious_stacks=6..,cooldown=1..}] run scoreboard players add @s devious_time 30
execute as @s[scores={devious_stacks=7..,cooldown=1..}] run scoreboard players add @s devious_time 30
execute as @s[scores={devious_stacks=8..,cooldown=1..}] run scoreboard players add @s devious_time 30
execute as @s[scores={devious_stacks=9..,cooldown=1..}] run scoreboard players add @s devious_time 30
execute as @s[scores={devious_stacks=10..,cooldown=1..}] run scoreboard players add @s devious_time 30

#Remove up to 3 additional seconds from the cooldown.
execute if score @s devious_time matches 100.. if score @s cooldown matches 1.. run scoreboard players remove @s[scores={devious_time=100..,cooldown=1..}] cooldown 1
execute if score @s devious_time matches 100.. if score @s cooldown matches 1.. run scoreboard players remove @s[scores={devious_time=100..,cooldown=1..}] devious_time 100

execute if score @s devious_time matches 100.. if score @s cooldown matches 1.. run scoreboard players remove @s[scores={devious_time=100..,cooldown=1..}] cooldown 1
execute if score @s devious_time matches 100.. if score @s cooldown matches 1.. run scoreboard players remove @s[scores={devious_time=100..,cooldown=1..}] devious_time 100

execute if score @s devious_time matches 100.. if score @s cooldown matches 1.. run scoreboard players remove @s[scores={devious_time=100..,cooldown=1..}] cooldown 1
execute if score @s devious_time matches 100.. if score @s cooldown matches 1.. run scoreboard players remove @s[scores={devious_time=100..,cooldown=1..}] devious_time 100

execute as @s[scores={brutal_stacks=1..}] run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute as @s[scores={relent_stacks=1..}] run particle minecraft:dust 0.796 1 0.957 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute as @s[scores={devious_stacks=1..}] run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute as @s[scores={sacrifice_stacks=1..}] run particle minecraft:dust 0.941 0.753 0.353 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal