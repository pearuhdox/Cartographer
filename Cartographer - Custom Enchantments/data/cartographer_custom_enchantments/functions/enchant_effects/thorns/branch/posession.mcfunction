#Possession - Random Chance
scoreboard players set in math 1
scoreboard players set in1 math 100

function cartographer_core:helper/math/rng/range

scoreboard players operation $melee ca.melee_chance = out math

#Possession - Run Effect
execute if score $thorns ca.t_poss matches 1 run scoreboard players set $percent_poss ca.melee_chance 10
execute if score $thorns ca.t_poss matches 2 run scoreboard players set $percent_poss ca.melee_chance 20
execute if score $thorns ca.t_poss matches 3.. run scoreboard players set $percent_poss ca.melee_chance 30

function cartographer_custom_enchantments:enchant_effects/possession/branch