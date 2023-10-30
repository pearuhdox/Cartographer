data modify storage cartographer_mob_abilities:aura effects set value []
data modify storage cartographer_mob_abilities:aura effects set from entity @s HandItems[1].tag.custom_potion_effects

execute store result score $aura_size ca.mob_var run attribute @s minecraft:generic.follow_range get

execute positioned ~ ~ ~ summon area_effect_cloud run function cartographer_mob_abilities:passive/aura/apply