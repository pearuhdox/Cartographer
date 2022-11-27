attribute @s minecraft:generic.attack_damage modifier remove 31199265-1981-8914-1100-000000000000
attribute @s minecraft:generic.movement_speed modifier remove 31199265-1981-8914-1100-000000000000

execute if score @s ca.size_changed_stacks matches 1 run attribute @s minecraft:generic.attack_damage modifier add 31199265-1981-8914-1100-000000000000 "reduced_size" -0.1 multiply
execute if score @s ca.size_changed_stacks matches 2 run attribute @s minecraft:generic.attack_damage modifier add 31199265-1981-8914-1100-000000000000 "reduced_size" -0.2 multiply
execute if score @s ca.size_changed_stacks matches 3 run attribute @s minecraft:generic.attack_damage modifier add 31199265-1981-8914-1100-000000000000 "reduced_size" -0.3 multiply
execute if score @s ca.size_changed_stacks matches 4 run attribute @s minecraft:generic.attack_damage modifier add 31199265-1981-8914-1100-000000000000 "reduced_size" -0.4 multiply
execute if score @s ca.size_changed_stacks matches 5.. run attribute @s minecraft:generic.attack_damage modifier add 31199265-1981-8914-1100-000000000000 "reduced_size" -0.5 multiply

execute if score @s ca.size_changed_stacks matches 1 run attribute @s minecraft:generic.movement_speed modifier add 31199265-1981-8914-1100-000000000000 "reduced_size" -0.05 multiply
execute if score @s ca.size_changed_stacks matches 2 run attribute @s minecraft:generic.movement_speed modifier add 31199265-1981-8914-1100-000000000000 "reduced_size" -0.1 multiply
execute if score @s ca.size_changed_stacks matches 3 run attribute @s minecraft:generic.movement_speed modifier add 31199265-1981-8914-1100-000000000000 "reduced_size" -0.15 multiply
execute if score @s ca.size_changed_stacks matches 4 run attribute @s minecraft:generic.movement_speed modifier add 31199265-1981-8914-1100-000000000000 "reduced_size" -0.2 multiply
execute if score @s ca.size_changed_stacks matches 5.. run attribute @s minecraft:generic.movement_speed modifier add 31199265-1981-8914-1100-000000000000 "reduced_size" -0.25 multiply