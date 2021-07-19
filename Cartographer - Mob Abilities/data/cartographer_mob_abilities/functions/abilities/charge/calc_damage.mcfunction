execute store result score @s ca.ability_dmg run attribute @s minecraft:generic.attack_damage get

scoreboard players operation $damage ca.ability_dmg = @s ca.ability_dmg

scoreboard players operation $damage ca.ability_dmg *= $25 ca.CONSTANT

execute if entity @s[tag=ca.mystic] run function cartographer_mob_abilities:ability_traits/mystic/calculation
execute if entity @s[tag=ca.arcane] run function cartographer_mob_abilities:ability_traits/arcane/calculation
execute if entity @s[tag=ca.muted] run function cartographer_mob_abilities:ability_traits/muted/calculation
execute if entity @s[tag=ca.dampened] run function cartographer_mob_abilities:ability_traits/dampened/calculation

scoreboard players operation $damage ca.ability_dmg /= $10 ca.CONSTANT