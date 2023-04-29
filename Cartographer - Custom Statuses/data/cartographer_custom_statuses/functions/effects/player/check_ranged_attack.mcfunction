data modify storage cartographer_custom_statuses:apply_effects data set value {}
data modify storage cartographer_custom_statuses:status_inflict data set value {}

execute if entity @s[tag=ca.ae_offh] unless entity @s[tag=ca.ae_main] run function cartographer_custom_statuses:apply_effects/save/offhand
execute if entity @s[tag=ca.ae_main] run function cartographer_custom_statuses:apply_effects/save/mainhand

execute if entity @s[tag=ca.si_offh] unless entity @s[tag=ca.si_main] run function cartographer_custom_statuses:status_inflict/save/offhand
execute if entity @s[tag=ca.si_main] run function cartographer_custom_statuses:status_inflict/save/mainhand

scoreboard players set $need_check ca.status_var 0
execute if score $do_status_inflict ca.status_var matches 1.. run scoreboard players set $need_check ca.status_var 1
execute if score $do_apply_effects ca.status_var matches 1.. run scoreboard players set $need_check ca.status_var 1

#Then find the projectile(s) and if it is an arrow, put a marker on top of it.
execute if score $need_check ca.status_var matches 1.. as @e[type=#bb:arrow,distance=..7,limit=3,sort=nearest,nbt=!{inGround:1b}] run function cartographer_custom_statuses:effects/player/custom_inflict/arrow_tracker/create_marker