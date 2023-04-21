function #minecraft:cartographer/events/enchantments/melee/possession/attack


scoreboard players set in math 1
scoreboard players set in1 math 100

function cartographer_core:helper/math/rng/range

scoreboard players operation $melee ca.melee_chance = out math

execute if entity @s[tag=is_possession_1] run scoreboard players set $percent_poss ca.melee_chance 8
execute if entity @s[tag=is_possession_2] run scoreboard players set $percent_poss ca.melee_chance 16
execute if entity @s[tag=is_possession_3] run scoreboard players set $percent_poss ca.melee_chance 24

scoreboard players set $pos_attempted ca.var 0
scoreboard players set $pos_success ca.var 0

execute unless entity @s[tag=ca.failed_possess] at @s run function cartographer_custom_enchantments:enchant_effects/possession/branch