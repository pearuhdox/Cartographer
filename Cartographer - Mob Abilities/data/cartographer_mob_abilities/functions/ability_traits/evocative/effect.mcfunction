scoreboard players set @s mob_move_red 21

execute if score $global helper_diff matches 1 run scoreboard players set @s ca.raycast 12
execute if score $global helper_diff matches 2 run scoreboard players set @s ca.raycast 16
execute if score $global helper_diff matches 3.. run scoreboard players set @s ca.raycast 20

execute if score $global helper_diff matches 1 run scoreboard players set $warmup ca.evocate_time 15
execute if score $global helper_diff matches 2 run scoreboard players set $warmup ca.evocate_time 10
execute if score $global helper_diff matches 3.. run scoreboard players set $warmup ca.evocate_time 5

playsound minecraft:entity.evoker.prepare_attack hostile @a[distance=..16] ~ ~ ~ 2 1.35

execute if entity @a[distance=..3.1] facing entity @p feet rotated ~ 0 positioned ^ ^ ^ run function cartographer_mob_abilities:ability_traits/evocative/close_ranged
execute unless entity @a[distance=..3.1] facing entity @p feet rotated ~ 0 positioned ^ ^ ^2 run function cartographer_mob_abilities:ability_traits/evocative/recurse