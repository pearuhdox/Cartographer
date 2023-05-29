tp @s ~ ~0.25 ~

execute if score $lvl ca.riptide matches 1 run scoreboard players set $strength delta.api.launch 14000
execute if score $lvl ca.riptide matches 2 run scoreboard players set $strength delta.api.launch 20000
execute if score $lvl ca.riptide matches 3 run scoreboard players set $strength delta.api.launch 28000
execute if score $lvl ca.riptide matches 4 run scoreboard players set $strength delta.api.launch 38000
execute if score $lvl ca.riptide matches 5 run scoreboard players set $strength delta.api.launch 47000
execute if score $lvl ca.riptide matches 6 run scoreboard players set $strength delta.api.launch 57000
execute if score $lvl ca.riptide matches 7 run scoreboard players set $strength delta.api.launch 66000
execute if score $lvl ca.riptide matches 8 run scoreboard players set $strength delta.api.launch 74000
execute if score $lvl ca.riptide matches 9 run scoreboard players set $strength delta.api.launch 82000
execute if score $lvl ca.riptide matches 10.. run scoreboard players set $strength delta.api.launch 91000

scoreboard players operation $over ca.riptide = $10 ca.CONSTANT
scoreboard players operation $over ca.riptide -= @s ca.riptide_count
scoreboard players operation $over ca.riptide -= @s ca.riptide_count
scoreboard players operation $over ca.riptide *= $10 ca.CONSTANT

#scoreboard players set $water_check ca.riptide 0
execute unless predicate cartographer_core:in_water run function cartographer_custom_enchantments:enchant_effects/riptide/dash/not_water
execute unless predicate cartographer_core:in_water unless predicate cartographer_core:is_in_rain positioned over world_surface if entity @s[distance=..1] at @s run function cartographer_custom_enchantments:enchant_effects/riptide/dash/not_water


execute if score @s ca.riptide_count matches 6.. run scoreboard players set @s ca.riptide_count 5


scoreboard players add $strength delta.api.launch 3000

scoreboard players operation @s ca.riptide_time = $duration ca.riptide

execute if score $lvl ca.riptide matches 1..3 as @s at @s rotated ~ ~-5 run function delta:api/launch_looking

execute if score $lvl ca.riptide matches 4.. as @s at @s rotated ~ ~ run function delta:api/launch_looking
