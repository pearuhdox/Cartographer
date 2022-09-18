#Runs as/at the player's position
scoreboard players operation $fourth_cdl cooldown = @s cooldown
scoreboard players operation $fourth_cdl cooldown /= $4 ca.CONSTANT

scoreboard players operation $half_cdl cooldown = @s cooldown
scoreboard players operation $half_cdl cooldown /= $2 ca.CONSTANT

execute if entity @s[tag=ca.ability_haste+] run scoreboard players operation @s cooldown -= $fourth_cdl cooldown

execute if entity @s[tag=ca.ability_haste++] run scoreboard players operation @s cooldown -= $half_cdl cooldown

execute if entity @s[tag=ca.ability_haste-] run scoreboard players operation @s cooldown += $fourth_cdl cooldown

execute if entity @s[tag=ca.ability_haste--] run scoreboard players operation @s cooldown += $half_cdl cooldown

execute if entity @s[tag=ca.ability_haste+++] run scoreboard players operation @s cooldown -= $fourth_cdl cooldown
execute if entity @s[tag=ca.ability_haste+++] run scoreboard players operation @s cooldown -= $half_cdl cooldown

execute if entity @s[tag=ca.ability_haste---] run scoreboard players operation @s cooldown += $fourth_cdl cooldown
execute if entity @s[tag=ca.ability_haste---] run scoreboard players operation @s cooldown += $half_cdl cooldown

#Reduce the cooldown by a fourth of remaining time on Hard or higher difficulties.
execute if score $global helper_diff matches 3.. run scoreboard players operation $fourth_cdl cooldown = @s cooldown
execute if score $global helper_diff matches 3.. run scoreboard players operation $fourth_cdl cooldown /= $4 ca.CONSTANT
execute if score $global helper_diff matches 3.. if score $fourth_cdl cooldown matches 0 run scoreboard players set $fourth_cdl cooldown 1
execute if score $global helper_diff matches 3.. run scoreboard players operation @s cooldown -= $fourth_cdl cooldown

#Alternatively, add a fourth of the cooldown on Easy
execute if score $global helper_diff matches 1 run scoreboard players operation $fourth_cdl cooldown = @s cooldown
execute if score $global helper_diff matches 1 run scoreboard players operation $fourth_cdl cooldown /= $4 ca.CONSTANT
execute if score $global helper_diff matches 1 if score $fourth_cdl cooldown matches 0 run scoreboard players set $fourth_cdl cooldown 1
execute if score $global helper_diff matches 1 run scoreboard players operation @s cooldown += $fourth_cdl cooldown

#If the mob has any accelerate stacks, the cooldown is immediately 0 - If the mob is an orbit mob we do this in the orbit function itself
execute unless entity @s[tag=ca.orbit] if score @s ca.accelerate_stacks matches 2.. run scoreboard players set @s cooldown 0