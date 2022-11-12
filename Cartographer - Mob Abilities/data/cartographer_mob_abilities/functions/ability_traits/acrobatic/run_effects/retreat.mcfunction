execute if entity @s[tag=ca.acrobatic_retreat] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/retreat

execute if entity @s[tag=ca.has_retreated] unless entity @s[tag=ca.trapper] unless entity @s[tag=ca.smash] unless entity @s[tag=ca.laser] unless entity @s[tag=ca.haunt] unless entity @s[tag=ca.magic_missile] if score @s cooldown matches 0 run scoreboard players remove @s ability_charge 1
