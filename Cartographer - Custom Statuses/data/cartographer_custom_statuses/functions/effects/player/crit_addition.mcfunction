execute if entity @s[tag=pot_add_crit] if entity @s run attribute @s minecraft:generic.attack_damage modifier add 31-2129-1440-1612-125518 "potion_effect_crit" 0.5 multiply
execute unless entity @s[tag=pot_add_crit] run attribute @s minecraft:generic.attack_damage modifier remove 31-2129-1440-1612-125518

#execute if entity @s[tag=pot_add_crit] run say pot add crit test