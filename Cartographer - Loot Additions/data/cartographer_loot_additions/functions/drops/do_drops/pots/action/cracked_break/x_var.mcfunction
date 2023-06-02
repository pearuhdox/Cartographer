scoreboard players set $rng_min bbl.rng -7
scoreboard players set $rng_max bbl.rng 7

function bb:lib/rng

execute if score $value bbl.rng matches -7 positioned ~-7 ~ ~ run function cartographer_loot_additions:drops/do_drops/pots/action/cracked_break/y_var
execute if score $value bbl.rng matches -6 positioned ~-6 ~ ~ run function cartographer_loot_additions:drops/do_drops/pots/action/cracked_break/y_var
execute if score $value bbl.rng matches -5 positioned ~-5 ~ ~ run function cartographer_loot_additions:drops/do_drops/pots/action/cracked_break/y_var
execute if score $value bbl.rng matches -4 positioned ~-4 ~ ~ run function cartographer_loot_additions:drops/do_drops/pots/action/cracked_break/y_var
execute if score $value bbl.rng matches -3 positioned ~-3 ~ ~ run function cartographer_loot_additions:drops/do_drops/pots/action/cracked_break/y_var
execute if score $value bbl.rng matches -2 positioned ~-2 ~ ~ run function cartographer_loot_additions:drops/do_drops/pots/action/cracked_break/y_var
execute if score $value bbl.rng matches -1 positioned ~-1 ~ ~ run function cartographer_loot_additions:drops/do_drops/pots/action/cracked_break/y_var

execute if score $value bbl.rng matches 0 positioned ~ ~ ~ run function cartographer_loot_additions:drops/do_drops/pots/action/cracked_break/y_var

execute if score $value bbl.rng matches 1 positioned ~1 ~ ~ run function cartographer_loot_additions:drops/do_drops/pots/action/cracked_break/y_var
execute if score $value bbl.rng matches 2 positioned ~2 ~ ~ run function cartographer_loot_additions:drops/do_drops/pots/action/cracked_break/y_var
execute if score $value bbl.rng matches 3 positioned ~3 ~ ~ run function cartographer_loot_additions:drops/do_drops/pots/action/cracked_break/y_var
execute if score $value bbl.rng matches 4 positioned ~4 ~ ~ run function cartographer_loot_additions:drops/do_drops/pots/action/cracked_break/y_var
execute if score $value bbl.rng matches 5 positioned ~5 ~ ~ run function cartographer_loot_additions:drops/do_drops/pots/action/cracked_break/y_var
execute if score $value bbl.rng matches 6 positioned ~6 ~ ~ run function cartographer_loot_additions:drops/do_drops/pots/action/cracked_break/y_var
execute if score $value bbl.rng matches 7 positioned ~7 ~ ~ run function cartographer_loot_additions:drops/do_drops/pots/action/cracked_break/y_var