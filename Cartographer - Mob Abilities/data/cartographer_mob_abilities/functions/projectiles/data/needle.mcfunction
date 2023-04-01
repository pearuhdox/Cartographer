scoreboard players operation $proj_damage ca.ability_dmg = $damage ca.ability_dmg

scoreboard players operation @s ca.ability_dmg = $proj_damage ca.ability_dmg

data modify entity @s Tags set from storage cartographer_mob_abilities:projectiles TagTemplate
data modify entity @s HandItems[0] set from storage cartographer_mob_abilities:projectiles AlchemistTemplate
data modify entity @s HandItems[1] set from storage cartographer_mob_abilities:projectiles AlchemistTemplate

scoreboard players operation @s ca.mob_kb = $value ca.mob_kb

tag @s add needle_projectile
tag @s add passive_needle
tag @s add passive_replaced_projectile