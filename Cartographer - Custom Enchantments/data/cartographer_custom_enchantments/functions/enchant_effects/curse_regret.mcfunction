execute if score @s curse_regret matches 1.. run tag @s add regretting

execute if score @s curse_regret matches 1 run scoreboard players set @s damage_queue 2
execute if score @s curse_regret matches 2 run scoreboard players set @s damage_queue 4
execute if score @s curse_regret matches 3 run scoreboard players set @s damage_queue 6
execute if score @s curse_regret matches 4 run scoreboard players set @s damage_queue 8
execute if score @s curse_regret matches 5.. run scoreboard players set @s damage_queue 10

execute if score @s curse_regret matches 1.. run function cartographer_core:helper/hurt_player/by_score