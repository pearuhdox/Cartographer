scoreboard players set $arrow_pot_inter ca.loot_var 0
scoreboard players set $fire_charge_pot_inter ca.loot_var 0

scoreboard players set $lava_bucket_pot_inter ca.loot_var 0
scoreboard players set $water_bucket_pot_inter ca.loot_var 0
scoreboard players set $pufferfish_pot_inter ca.loot_var 0

scoreboard players set $potion_pot_inter ca.loot_var 0
scoreboard players set $egg_pot_inter ca.loot_var 0

execute as 31192011-4452-2112-0000-000000000000 if predicate cartographer_loot_additions:arrow_check run scoreboard players set $arrow_pot_inter ca.loot_var 1
execute as 31192011-4452-2112-0000-000000000000 if predicate cartographer_loot_additions:fire_charge_check run scoreboard players set $fire_charge_pot_inter ca.loot_var 1

execute as 31192011-4452-2112-0000-000000000000 if predicate cartographer_loot_additions:lava_bucket_check run scoreboard players set $lava_bucket_pot_inter ca.loot_var 1
execute as 31192011-4452-2112-0000-000000000000 if predicate cartographer_loot_additions:water_bucket_check run scoreboard players set $water_bucket_pot_inter ca.loot_var 1
execute as 31192011-4452-2112-0000-000000000000 if predicate cartographer_loot_additions:pufferfish_bucket_check run scoreboard players set $pufferfish_pot_inter ca.loot_var 1

execute as 31192011-4452-2112-0000-000000000000 if predicate cartographer_loot_additions:potion_check run scoreboard players set $potion_pot_inter ca.loot_var 1
execute as 31192011-4452-2112-0000-000000000000 if predicate cartographer_loot_additions:spawn_egg_check run scoreboard players set $egg_pot_inter ca.loot_var 1

execute if score $arrow_pot_inter ca.loot_var matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/arrow
execute if score $fire_charge_pot_inter ca.loot_var matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/fire_charge

execute if score $lava_bucket_pot_inter ca.loot_var matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/lava_bucket
execute if score $water_bucket_pot_inter ca.loot_var matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/water_bucket
execute if score $pufferfish_pot_inter ca.loot_var matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/pufferfish

execute if score $potion_pot_inter ca.loot_var matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/potion
execute if score $egg_pot_inter ca.loot_var matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/spawn_egg
