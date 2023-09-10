execute if entity @s[tag=ca.no_scaling] run scoreboard players operation $damage ca.ability_dmg *= $10 ca.CONSTANT
execute unless entity @s[tag=ca.no_scaling] run scoreboard players operation $damage ca.ability_dmg *= $25 ca.CONSTANT
scoreboard players operation $damage ca.ability_dmg /= $10 ca.CONSTANT