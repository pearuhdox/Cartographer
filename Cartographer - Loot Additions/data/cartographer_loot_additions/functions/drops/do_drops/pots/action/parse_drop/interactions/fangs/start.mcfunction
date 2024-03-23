scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 6
function bb:lib/rng

scoreboard players operation $fang_dir ca.loot_var = $value bbl.rng


scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 3
function bb:lib/rng

scoreboard players operation $fang_pat ca.loot_var = $value bbl.rng


execute if score $fang_dir ca.loot_var matches 1 rotated 0 0 run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/fangs/patterns
execute if score $fang_dir ca.loot_var matches 2 rotated 15 0 run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/fangs/patterns
execute if score $fang_dir ca.loot_var matches 3 rotated 30 0 run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/fangs/patterns
execute if score $fang_dir ca.loot_var matches 4 rotated 45 0 run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/fangs/patterns
execute if score $fang_dir ca.loot_var matches 5 rotated 60 0 run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/fangs/patterns
execute if score $fang_dir ca.loot_var matches 6 rotated 75 0 run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/fangs/patterns

kill @s