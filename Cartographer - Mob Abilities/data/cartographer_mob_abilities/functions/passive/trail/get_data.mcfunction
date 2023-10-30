data modify storage cartographer_mob_abilities:trail effects set value []
data modify storage cartographer_mob_abilities:trail effects set from entity @s HandItems[1].tag.custom_potion_effects

execute positioned ~ ~ ~ summon area_effect_cloud run function cartographer_mob_abilities:passive/trail/aec