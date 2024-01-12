data modify entity 31192011-4452-2112-0000-000000000000 HandItems[0] set value {}
data modify entity 31192011-4452-2112-0000-000000000000 HandItems[0] set from entity @s Item

execute unless score $cracked ca.loot_var matches 1.. run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/not_cracked
execute if score $cracked ca.loot_var matches 1.. run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/cracked