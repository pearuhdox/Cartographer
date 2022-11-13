execute if entity @s[tag=ca.acrobatic_kite] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/kite
execute if entity @s[tag=ca.acrobatic_kite_forward] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/kite_forward
execute if entity @s[tag=ca.acrobatic_kite_strafe] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/kite_strafe
execute if entity @s[tag=ca.acrobatic_kite_elytra] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/kite_elytra

execute if entity @s[tag=ca.has_kited] unless entity @s[tag=ca.trapper] unless entity @s[tag=ca.smash] unless entity @s[tag=ca.laser] unless entity @s[tag=ca.haunt] unless entity @s[tag=ca.magic_missile] if score @s cooldown matches 0 run scoreboard players remove @s ability_charge 1