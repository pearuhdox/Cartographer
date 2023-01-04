execute unless entity @s[tag=ca.vol_center] run function cartographer_custom_enchantments:enchant_effects/explosive/do_effects

execute unless predicate cartographer_mob_abilities:is_invulnerable run function cartographer_custom_enchantments:enchant_effects/explosive/do_damage

execute unless entity @s[tag=ca.vol_center] run function cartographer_custom_enchantments:enchant_effects/explosive/do_pull

function #minecraft:cartographer/events/enchants_mob_hit/ranged/explosive