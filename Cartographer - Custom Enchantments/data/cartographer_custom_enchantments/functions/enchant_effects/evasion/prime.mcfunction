scoreboard players set in math 1
scoreboard players set in1 math 100

function cartographer_core:helper/math/rng/range

scoreboard players operation @s ca.evade_chance = out math
scoreboard players operation @s ca.evade_chance -= @s ca.evasion_bias

scoreboard players set @s[scores={ca.evade_chance=..0}] ca.evade_chance 1

scoreboard players operation $percent_evade ca.evade_chance = @s ca.evasion
scoreboard players operation $percent_evade ca.evade_chance *= $4 ca.CONSTANT

execute if score @s ca.evade_chance <= $percent_evade ca.evade_chance run tag @s add evading

#execute unless entity @s[tag=evading] unless score @s ca.luck_coeff matches 0 if score @s ca.luck+ matches 1.. run function cartographer_custom_enchantments:enchant_effects/evasion/pos_reroll/base
#execute if entity @s[tag=evading] unless score @s ca.luck_coeff matches 0 if score @s ca.luck- matches 1.. run function cartographer_custom_enchantments:enchant_effects/evasion/neg_reroll/base

execute unless entity @s[tag=evading] run scoreboard players add @s ca.evasion_bias 4
execute unless entity @s[tag=evading] run scoreboard players set @s[scores={ca.evasion_bias=20..}] ca.evasion_bias 20

execute if entity @s[tag=evading] run scoreboard players set @s ca.evasion_bias 0