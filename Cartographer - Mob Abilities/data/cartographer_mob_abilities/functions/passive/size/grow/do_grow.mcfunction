#Multiply current health by 100
scoreboard players operation $target_health bbl.storage *= $100 bbl.constant
#Divide current health by max health
scoreboard players operation $target_health bbl.storage /= $target_max_health bbl.storage
#Set intermediary score
scoreboard players operation $percentage_health_remaining bbl.storage = $target_health bbl.storage

scoreboard players operation $size_max_range ca.mob_var = @s ca.size_max
scoreboard players add $size_max_range ca.mob_var 1
scoreboard players operation $size_max_range ca.mob_var -= @s ca.size_min

scoreboard players operation $grow_val ca.mob_var = $100 ca.CONSTANT
scoreboard players operation $grow_val ca.mob_var -= $percentage_health_remaining bbl.storage

scoreboard players operation $grow_val ca.mob_var *= $size_max_range ca.mob_var

scoreboard players operation $grow_val ca.mob_var /= $100 ca.CONSTANT

scoreboard players operation $grow_val ca.mob_var += @s ca.size_min

execute if score $grow_val ca.mob_var > @s ca.size_max run scoreboard players operation $grow_val ca.mob_var = @s ca.size_max
execute if score $grow_val ca.mob_var < @s ca.size_min run scoreboard players operation $grow_val ca.mob_var = @s ca.size_min

execute store result entity @s Size int 1 run scoreboard players add $grow_val ca.mob_var 0

execute unless score @s ca.size_cur = $grow_val ca.mob_var run function cartographer_mob_abilities:passive/size/grow/did_grow

scoreboard players operation @s ca.size_cur = $grow_val ca.mob_var