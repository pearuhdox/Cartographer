data modify storage cartographer_mob_abilities:passive_effects data set value {}
data modify storage cartographer_mob_abilities:passive_effects data.effects set from entity @s HandItems[0].tag.custom_potion_effects

function cartographer_mob_abilities:passive/passive_effects/apply/create_aec