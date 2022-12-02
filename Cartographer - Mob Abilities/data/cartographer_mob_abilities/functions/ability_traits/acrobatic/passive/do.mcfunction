execute if entity @s[tag=ca.acro_strafe_pass] run function cartographer_mob_abilities:ability_traits/acrobatic/strafe
execute if entity @s[tag=ca.acro_strafe_back_pass] run function cartographer_mob_abilities:ability_traits/acrobatic/strafe_back
execute if entity @s[tag=ca.acro_retreat_pass] run function cartographer_mob_abilities:ability_traits/acrobatic/retreat
execute if entity @s[tag=ca.acro_gap_close_pass] run function cartographer_mob_abilities:ability_traits/acrobatic/gap_close
execute if entity @s[tag=ca.acro_kite_pass] run function cartographer_mob_abilities:ability_traits/acrobatic/kite
execute if entity @s[tag=ca.acro_kite_forward_pass] run function cartographer_mob_abilities:ability_traits/acrobatic/kite_forward
execute if entity @s[tag=ca.acro_kite_strafe_pass] run function cartographer_mob_abilities:ability_traits/acrobatic/kite_strafe
execute if entity @s[tag=ca.acro_dynamic_pass] run function cartographer_mob_abilities:ability_traits/acrobatic/effect

scoreboard players set @s mob_atk_dis 30

tag @s remove ca.has_kited
tag @s remove ca.has_gap_closed
tag @s remove ca.has_retreated

scoreboard players set @s ca.acrobat_passive_cooldown 5