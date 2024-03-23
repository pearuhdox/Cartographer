scoreboard players set $charge_bar_check ca.var 1

execute on vehicle run scoreboard players set $charge_bar_check ca.var 2

execute if score $charge_bar_check ca.var matches 1 on passengers if entity @s[tag=ca.entity_popup_2] run kill @s
execute if score $charge_bar_check ca.var matches 1 run kill @s

scoreboard players set $charge_bar_check ca.var 0

execute if entity @s[tag=ca.popup_notice] run function cartographer_core:helper/entity_popups/notice_purge