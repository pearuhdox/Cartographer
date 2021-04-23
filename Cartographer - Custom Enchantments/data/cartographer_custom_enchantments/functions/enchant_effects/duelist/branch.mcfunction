execute if score $melee duelist matches 1.. run execute as @s at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.5 0.3 0.3 20 normal

execute if score $melee duelist matches 1 run execute as @s run scoreboard players set @s damage_queue 2
execute if score $melee duelist matches 2 run execute as @s run scoreboard players set @s damage_queue 5
execute if score $melee duelist matches 3 run execute as @s run scoreboard players set @s damage_queue 7
execute if score $melee duelist matches 4 run execute as @s run scoreboard players set @s damage_queue 10
execute if score $melee duelist matches 5 run execute as @s run scoreboard players set @s damage_queue 12

execute if score $melee duelist matches 1.. run execute as @s run function cartographer_core:helper/deal_damage/by_score

execute if score $melee duelist matches 1 run execute as @s run function cartographer_core:helper/deal_damage/half
execute if score $melee duelist matches 3 run execute as @s run function cartographer_core:helper/deal_damage/half
execute if score $melee duelist matches 5 run execute as @s run function cartographer_core:helper/deal_damage/half