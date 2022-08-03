execute if predicate cartographer_mob_abilities:block_effects/has_poison_previously run tag @s add ca.had_poison
execute if predicate cartographer_mob_abilities:block_effects/has_wither_previously run tag @s add ca.had_wither
execute if predicate cartographer_mob_abilities:block_effects/has_slowness_previously run tag @s add ca.had_slowness
execute if predicate cartographer_mob_abilities:block_effects/has_hunger_previously run tag @s add ca.had_hunger
execute if predicate cartographer_mob_abilities:block_effects/has_fatigue_previously run tag @s add ca.had_fatigue
execute if predicate cartographer_mob_abilities:block_effects/has_levitation_previously run tag @s add ca.had_levitation
execute if predicate cartographer_mob_abilities:block_effects/has_darkness_previously run tag @s add ca.had_darkness

tag @s add ca.check_has_effect