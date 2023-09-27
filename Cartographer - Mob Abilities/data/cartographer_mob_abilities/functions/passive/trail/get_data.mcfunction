data modify storage cartographer_mob_abilities:trail Effects set value []
data modify storage cartographer_mob_abilities:trail Effects set from entity @s HandItems[1].tag.CustomPotionEffects

execute positioned ~ ~ ~ summon area_effect_cloud run function cartographer_mob_abilities:passive/trail/aec