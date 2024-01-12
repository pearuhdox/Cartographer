scoreboard players set $potion_pot_inter ca.loot_var 0
scoreboard players set $egg_pot_inter ca.loot_var 0

execute as 31192011-4452-2112-0000-000000000000 if predicate cartographer_loot_additions:potion_check run scoreboard players set $potion_pot_inter ca.loot_var 1
execute as 31192011-4452-2112-0000-000000000000 if predicate cartographer_loot_additions:spawn_egg_check run scoreboard players set $egg_pot_inter ca.loot_var 1

execute if score $potion_pot_inter ca.loot_var matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/potion
execute if score $egg_pot_inter ca.loot_var matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/spawn_egg
