function cartographer_mob_abilities:ability_traits/call_all_traits

execute if entity @s[tag=ca.acrobatic_strafe] run function cartographer_mob_abilities:ability_traits/acrobatic/strafe
execute if entity @s[tag=ca.acrobatic_retreat] run function cartographer_mob_abilities:ability_traits/acrobatic/retreat
execute if entity @s[tag=ca.acrobatic_gap_close] run function cartographer_mob_abilities:ability_traits/acrobatic/gap_close
execute if entity @s[tag=ca.acrobatic_kite] run function cartographer_mob_abilities:ability_traits/acrobatic/kite
execute if entity @s[tag=ca.acrobatic_kite_forward] run function cartographer_mob_abilities:ability_traits/acrobatic/kite_forward
execute if entity @s[tag=ca.acrobatic_kite_strafe] run function cartographer_mob_abilities:ability_traits/acrobatic/kite_strafe
