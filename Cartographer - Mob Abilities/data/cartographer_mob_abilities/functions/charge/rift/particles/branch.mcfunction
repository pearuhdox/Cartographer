execute rotated ~ 0 run function cartographer_mob_abilities:charge/rift/particles/line
execute if score @s ability_charge matches 2.. rotated ~13 0 run function cartographer_mob_abilities:charge/rift/particles/line 
execute if score @s ability_charge matches 2.. rotated ~-13 0 run function cartographer_mob_abilities:charge/rift/particles/line
execute if score @s ability_charge matches 3.. rotated ~26 0 run function cartographer_mob_abilities:charge/rift/particles/line 
execute if score @s ability_charge matches 3.. rotated ~-26 0 run function cartographer_mob_abilities:charge/rift/particles/line 

execute unless entity @s[tag=ca.single_wave] rotated ~120 0 run function cartographer_mob_abilities:charge/rift/particles/line
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 2.. rotated ~133 0 run function cartographer_mob_abilities:charge/rift/particles/line 
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 2.. rotated ~107 0 run function cartographer_mob_abilities:charge/rift/particles/line
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 3.. rotated ~146 0 run function cartographer_mob_abilities:charge/rift/particles/line 
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 3.. rotated ~94 0 run function cartographer_mob_abilities:charge/rift/particles/line

execute unless entity @s[tag=ca.single_wave] rotated ~240 0 run function cartographer_mob_abilities:charge/rift/particles/line
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 2.. rotated ~253 0 run function cartographer_mob_abilities:charge/rift/particles/line 
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 2.. rotated ~227 0 run function cartographer_mob_abilities:charge/rift/particles/line
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 3.. rotated ~266 0 run function cartographer_mob_abilities:charge/rift/particles/line 
execute unless entity @s[tag=ca.single_wave] if score @s ability_charge matches 3.. rotated ~214 0 run function cartographer_mob_abilities:charge/rift/particles/line