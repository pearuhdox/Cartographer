scoreboard players operation $potion_size ca.var = @s ca.attr_potion_size
execute if score $potion_size ca.var matches 21.. run scoreboard players add $potion_size ca.var 8
execute unless score $potion_size ca.var matches 21.. run scoreboard players add $potion_size ca.var 5

execute unless score @s ca.attr_potion_size matches 1.. run scoreboard players set $potion_size ca.var 30

execute store result storage cartographer:macro.custom_statuses potion_size double 0.1 run scoreboard players add $potion_size ca.var 1
scoreboard players remove $potion_size ca.var 1
execute store result storage cartographer:macro.custom_statuses potion_size_half double 0.05 run scoreboard players get $potion_size ca.var

function cartographer_custom_statuses:inflict/do_effect_macro with storage cartographer:macro.custom_statuses