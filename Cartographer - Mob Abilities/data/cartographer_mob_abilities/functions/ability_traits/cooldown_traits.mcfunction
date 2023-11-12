#Runs as/at the player's position
scoreboard players operation $fourth_cdl cooldown = @s cooldown
scoreboard players operation $fourth_cdl cooldown /= $4 ca.CONSTANT

scoreboard players operation $half_cdl cooldown = @s cooldown
scoreboard players operation $half_cdl cooldown /= $2 ca.CONSTANT

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

#Redefine These Proportions for Ability Haste
scoreboard players operation $fourth_cdl cooldown = @s cooldown
scoreboard players operation $fourth_cdl cooldown /= $4 ca.CONSTANT

scoreboard players operation $half_cdl cooldown = @s cooldown
scoreboard players operation $half_cdl cooldown /= $2 ca.CONSTANT

#Run Ability Haste Traits - Ability Haste Traits are Disabled on Hard or higher
function cartographer_mob_abilities:ability_traits/cooldown_haste 

#Roll a random chance to add 1 or 2 seconds to the cooldown
scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 10

function bb:lib/rng
scoreboard players operation $cdl_rng ca.mob_var = $value bbl.rng
execute if score $cdl_rng ca.mob_var matches 6..8 unless entity @s[tag=ca.block_rng_cdl_add] run scoreboard players add @s cooldown 1
execute if score $cdl_rng ca.mob_var matches 9..10 unless entity @s[tag=ca.block_rng_cdl_add] run scoreboard players add @s cooldown 2

#Cap Cooldown Time - A Cooldown can never be lower than 5 seconds
execute if score @s cooldown matches ..4 run scoreboard players set @s cooldown 5

#If the mob has any accelerate stacks, the cooldown is immediately 0 - If the mob is an orbit mob we do this in the orbit function itself
execute unless entity @s[tag=ca.orbit] if score @s ca.accelerate_stacks matches 2.. run scoreboard players set @s cooldown 0