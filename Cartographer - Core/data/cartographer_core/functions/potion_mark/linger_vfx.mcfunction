scoreboard players operation $potion_size ca.var = @s ca.attr_potion_size
execute if score $potion_size ca.var matches 21.. run scoreboard players add $potion_size ca.var 8
execute unless score $potion_size ca.var matches 21.. run scoreboard players add $potion_size ca.var 5

execute unless score @s ca.attr_potion_size matches 1.. run scoreboard players set $potion_size ca.var 30

execute store result storage cartographer:macro.custom_statuses potion_size_vfx double 0.04 run scoreboard players get $potion_size ca.var

execute store result storage cartographer:macro.custom_statuses potion_size_ct int 0.5 run scoreboard players get $potion_size ca.var

execute at @s run function cartographer_core:potion_mark/linger_vfx_macro with storage cartographer:macro.custom_statuses