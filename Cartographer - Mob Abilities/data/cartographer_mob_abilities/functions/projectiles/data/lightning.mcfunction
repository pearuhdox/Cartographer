scoreboard players operation $proj_damage ca.ability_dmg = $damage ca.ability_dmg
scoreboard players operation $proj_damage ca.ability_dmg *= $150 ca.CONSTANT
scoreboard players operation $proj_damage ca.ability_dmg /= $100 ca.CONSTANT

scoreboard players operation $damage ca.ability_dmg = $proj_damage ca.ability_dmg

function cartographer_mob_abilities:abilities/storm/cloud_setup

scoreboard players operation @s ca.mob_kb = $value ca.mob_kb

#data modify entity @s Owner set from storage cartographer_mob_abilities:projectiles DataTemplate.Owner

data modify storage cartographer_mob_abilities:projectiles DataTemplate set value {}