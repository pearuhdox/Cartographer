execute if entity @s[tag=ca.acrobatic_strafe_passive] run function cartographer_mob_abilities:ability_traits/acrobatic/strafe
execute if entity @s[tag=ca.acrobatic_retreat_passive] run function cartographer_mob_abilities:ability_traits/acrobatic/retreat
execute if entity @s[tag=ca.acrobatic_gap_close_passive] run function cartographer_mob_abilities:ability_traits/acrobatic/gap_close
execute if entity @s[tag=ca.acrobatic_kite_passive] run function cartographer_mob_abilities:ability_traits/acrobatic/kite
execute if entity @s[tag=ca.acrobatic_kite_forward_passive] run function cartographer_mob_abilities:ability_traits/acrobatic/kite_forward
execute if entity @s[tag=ca.acrobatic_kite_strafe_passive] run function cartographer_mob_abilities:ability_traits/acrobatic/kite_strafe
execute if entity @s[tag=ca.acrobatic_dynamic_passive] run function cartographer_mob_abilities:ability_traits/acrobatic/effect

tag @s remove ca.has_kited
tag @s remove ca.has_gap_closed
tag @s remove ca.has_retreated

scoreboard players set @s ca.acrobat_passive_cooldown 5