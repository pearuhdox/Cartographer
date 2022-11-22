scoreboard players operation $proj_damage ca.ability_dmg = $damage ca.ability_dmg
scoreboard players operation $proj_damage ca.ability_dmg *= $2 ca.CONSTANT

scoreboard players operation @s ca.ability_dmg = $proj_damage ca.ability_dmg

data modify entity @s Tags set from storage cartographer_mob_abilities:projectiles TagTemplate
data modify entity @s HandItems[0] set from storage cartographer_mob_abilities:projectiles AlchemistTemplate
data modify entity @s HandItems[1] set from storage cartographer_mob_abilities:projectiles AlchemistTemplate

tag @s add ca.rift_projectile
tag @s add ca.fresh_rift
tag @s add passive_replaced_projectile
tag @s add uuid_registered

data modify storage cartographer_mob_abilities:projectiles DataTemplate set value {}
data modify storage cartographer_mob_abilities:projectiles TagTemplate set value []
data modify storage cartographer_mob_abilities:projectiles AlchemistTemplate set value {}