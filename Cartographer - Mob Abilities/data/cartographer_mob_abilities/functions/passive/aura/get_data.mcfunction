data modify storage cartographer_mob_abilities:aura Effects set value []
data modify storage cartographer_mob_abilities:aura Effects set from entity @s HandItems[1].tag.CustomPotionEffects

execute store result score $aura_size ca.mob_var run attribute @s minecraft:generic.follow_range get

execute positioned ~ ~ ~ summon area_effect_cloud run function cartographer_mob_abilities:passive/aura/apply