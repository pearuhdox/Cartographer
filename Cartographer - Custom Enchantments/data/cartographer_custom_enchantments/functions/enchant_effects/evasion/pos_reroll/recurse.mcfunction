scoreboard players set in math 1
scoreboard players set in1 math 100

function cartographer_core:helper/math/rng/range

scoreboard players operation @s ca.evade_chance = out math
scoreboard players operation @s ca.evade_chance -= @s ca.evasion_bias

scoreboard players set @s[scores={ca.evade_chance=..0}] ca.evade_chance 1

scoreboard players operation $percent_evade ca.evade_chance = @s ca.evasion
scoreboard players operation $percent_evade ca.evade_chance *= $4 ca.CONSTANT

execute if score @s ca.evade_chance <= $percent_evade ca.evade_chance run tag @s add evading

scoreboard players remove $chances ca.luck+ 1
execute unless entity @s[tag=evading] if score $chances ca.luck+ matches 1.. run function cartographer_custom_enchantments:enchant_effects/evasion/pos_reroll/recurse