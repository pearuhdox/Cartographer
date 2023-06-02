data modify storage cartographer_mob_abilities:passive_effects data set value {}
data modify storage cartographer_mob_abilities:passive_effects data.Effects set from entity @s HandItems[0].tag.CustomPotionEffects

function cartographer_mob_abilities:passive/passive_effects/apply/create_aec