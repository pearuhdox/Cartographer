function cartographer_core:helper/abs_handler/reset

execute if score $cap ca.abs_handler matches 1.. run scoreboard players operation $amount ca.abs_handler < $cap ca.abs_handler

scoreboard players set $offset ca.abs_handler 512
scoreboard players operation $offset ca.abs_handler -= $amount ca.abs_handler


execute store result storage cartographer:macro.core duration int 1 run scoreboard players get $duration ca.abs_handler
execute store result storage cartographer:macro.core offset int 1 run scoreboard players get $offset ca.abs_handler

tag @s add ca.carto_abs_applied

function cartographer_core:helper/abs_handler/macro with storage cartographer:macro.core

scoreboard players set $duration ca.abs_handler 0
scoreboard players set $amount ca.abs_handler 0
scoreboard players set $cap ca.abs_handler 0

scoreboard players set $add_flag ca.abs_handler 0