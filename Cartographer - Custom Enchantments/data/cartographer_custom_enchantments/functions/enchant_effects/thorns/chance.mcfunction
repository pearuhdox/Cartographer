scoreboard players set in math 1
scoreboard players set in1 math 100

function cartographer_core:helper/math/rng/range

scoreboard players operation $melee ca.melee_chance = out math

scoreboard players operation $percent_stun ca.melee_chance = $melee ca.stunning
scoreboard players operation $percent_stun ca.melee_chance *= $10 ca.CONSTANT
scoreboard players operation $percent_poss ca.melee_chance = $melee ca.possession
scoreboard players operation $percent_poss ca.melee_chance *= $10 ca.CONSTANT