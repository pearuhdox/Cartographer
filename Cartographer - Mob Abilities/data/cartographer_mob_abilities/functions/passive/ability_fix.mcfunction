execute if score $global helper_diff matches 1 run scoreboard players set @s cooldown 4
execute if score $global helper_diff matches 2 run scoreboard players set @s cooldown 2
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 0

tag @s add ability_checked