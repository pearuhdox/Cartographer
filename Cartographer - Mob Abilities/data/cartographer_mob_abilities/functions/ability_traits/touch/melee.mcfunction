function cartographer_mob_abilities:ability_traits/call_all_traits

execute unless score @s ca.acro_cooldown matches 1.. if entity @s[tag=ca.acro_strafe] run function cartographer_mob_abilities:ability_traits/acrobatic/strafe
execute unless score @s ca.acro_cooldown matches 1.. if entity @s[tag=ca.acro_strafe_back] run function cartographer_mob_abilities:ability_traits/acrobatic/strafe_back
execute unless score @s ca.acro_cooldown matches 1.. if entity @s[tag=ca.acro_retreat] run function cartographer_mob_abilities:ability_traits/acrobatic/retreat
execute unless score @s ca.acro_cooldown matches 1.. if entity @s[tag=ca.acro_gap_close] run function cartographer_mob_abilities:ability_traits/acrobatic/gap_close
execute unless score @s ca.acro_cooldown matches 1.. if entity @s[tag=ca.acro_kite] run function cartographer_mob_abilities:ability_traits/acrobatic/kite
execute unless score @s ca.acro_cooldown matches 1.. if entity @s[tag=ca.acro_kite_forward] run function cartographer_mob_abilities:ability_traits/acrobatic/kite_forward
execute unless score @s ca.acro_cooldown matches 1.. if entity @s[tag=ca.acro_kite_strafe] run function cartographer_mob_abilities:ability_traits/acrobatic/kite_strafe

tag @s remove ca.running_touch_melee

tag @a remove touched
tag @a remove ability_tagged