execute rotated ~ 0 run function cartographer_mob_abilities:animations/rift/particles/line
execute if score @s ability_charge matches 11 rotated ~13 0 run function cartographer_mob_abilities:animations/rift/particles/line 
execute if score @s ability_charge matches 11 rotated ~-13 0 run function cartographer_mob_abilities:animations/rift/particles/line

execute if score @s ability_charge matches 21 rotated ~13 0 run function cartographer_mob_abilities:animations/rift/particles/line 
execute if score @s ability_charge matches 21 rotated ~-13 0 run function cartographer_mob_abilities:animations/rift/particles/line
execute if score @s ability_charge matches 21 rotated ~26 0 run function cartographer_mob_abilities:animations/rift/particles/line 
execute if score @s ability_charge matches 21 rotated ~-26 0 run function cartographer_mob_abilities:animations/rift/particles/line 

execute unless entity @s[tag=ca.single_wave] rotated ~120 0 run function cartographer_mob_abilities:animations/rift/particles/line
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 11 rotated ~133 0 run function cartographer_mob_abilities:animations/rift/particles/line 
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 11 rotated ~107 0 run function cartographer_mob_abilities:animations/rift/particles/line

execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 21 rotated ~133 0 run function cartographer_mob_abilities:animations/rift/particles/line 
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 21 rotated ~107 0 run function cartographer_mob_abilities:animations/rift/particles/line
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 21 rotated ~146 0 run function cartographer_mob_abilities:animations/rift/particles/line 
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 21 rotated ~94 0 run function cartographer_mob_abilities:animations/rift/particles/line

execute unless entity @s[tag=ca.single_wave] rotated ~240 0 run function cartographer_mob_abilities:animations/rift/particles/line
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 11 rotated ~253 0 run function cartographer_mob_abilities:animations/rift/particles/line 
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 11 rotated ~227 0 run function cartographer_mob_abilities:animations/rift/particles/line

execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 21 rotated ~253 0 run function cartographer_mob_abilities:animations/rift/particles/line 
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 21 rotated ~227 0 run function cartographer_mob_abilities:animations/rift/particles/line
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 21 rotated ~266 0 run function cartographer_mob_abilities:animations/rift/particles/line 
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 21 rotated ~214 0 run function cartographer_mob_abilities:animations/rift/particles/line