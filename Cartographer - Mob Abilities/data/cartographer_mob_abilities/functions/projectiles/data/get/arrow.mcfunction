data modify storage cartographer_mob_abilities:projectiles DataTemplate.Offhand set value {}
data modify storage cartographer_mob_abilities:projectiles DataTemplate.Offhand set from entity @s HandItems[1]

data modify storage cartographer_mob_abilities:projectiles DataTemplate.ArrowDamage set value 0.0

scoreboard players operation $damage_div3 ca.ability_dmg = $damage ca.ability_dmg

scoreboard players operation $damage_div3 ca.ability_dmg *= $100 ca.CONSTANT

execute if entity @s[tag=ca.sh_slower] run scoreboard players operation $damage_div3 ca.ability_dmg *= $80 ca.CONSTANT
execute if entity @s[tag=ca.sh_slower] run scoreboard players operation $damage_div3 ca.ability_dmg /= $100 ca.CONSTANT

execute unless entity @s[tag=ca.sh_slower] run scoreboard players operation $damage_div3 ca.ability_dmg /= $2 ca.CONSTANT


execute store result storage cartographer_mob_abilities:projectiles DataTemplate.ArrowDamage double 0.01 run scoreboard players add $damage_div3 ca.ability_dmg 0