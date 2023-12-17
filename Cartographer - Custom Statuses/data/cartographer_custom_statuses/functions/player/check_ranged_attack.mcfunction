data modify storage cartographer_custom_statuses:apply_effects data set value {}
data modify storage cartographer_custom_statuses:apply_status data set value {}

execute if entity @s[tag=ca.ae_offh] unless entity @s[tag=ca.ae_main] run function cartographer_custom_statuses:apply_effects/save/offhand
execute if entity @s[tag=ca.ae_main] run function cartographer_custom_statuses:apply_effects/save/mainhand

execute if entity @s[tag=ca.si_offh] unless entity @s[tag=ca.si_main] run function cartographer_custom_statuses:apply_status/save/offhand
execute if entity @s[tag=ca.si_main] run function cartographer_custom_statuses:apply_status/save/mainhand


execute if entity @s[tag=ca.as_offh] unless entity @s[tag=ca.as_main] run function cartographer_custom_statuses:apply_self/save/offhand
execute if entity @s[tag=ca.as_main] run function cartographer_custom_statuses:apply_self/save/mainhand


execute if entity @s[tag=ca.override_ranged_h,tag=ca.ae_head] run function cartographer_custom_statuses:apply_effects/save/override/head
execute if entity @s[tag=ca.override_ranged_b,tag=ca.ae_body] run function cartographer_custom_statuses:apply_effects/save/override/body
execute if entity @s[tag=ca.override_ranged_l,tag=ca.ae_legs] run function cartographer_custom_statuses:apply_effects/save/override/legs
execute if entity @s[tag=ca.override_ranged_f,tag=ca.ae_feet] run function cartographer_custom_statuses:apply_effects/save/override/feet
execute if entity @s[tag=ca.override_ranged_o,tag=ca.ae_offh] run function cartographer_custom_statuses:apply_effects/save/override/offhand

execute if entity @s[tag=ca.override_ranged_h,tag=ca.as_head] run function cartographer_custom_statuses:apply_self/save/override/head
execute if entity @s[tag=ca.override_ranged_b,tag=ca.as_body] run function cartographer_custom_statuses:apply_self/save/override/body
execute if entity @s[tag=ca.override_ranged_l,tag=ca.as_legs] run function cartographer_custom_statuses:apply_self/save/override/legs
execute if entity @s[tag=ca.override_ranged_f,tag=ca.as_feet] run function cartographer_custom_statuses:apply_self/save/override/feet
execute if entity @s[tag=ca.override_ranged_o,tag=ca.as_offh] run function cartographer_custom_statuses:apply_self/save/override/offhand
execute if entity @s[tag=ca.override_ranged_m,tag=ca.as_main] run function cartographer_custom_statuses:apply_self/save/override/mainhand

execute if entity @s[tag=ca.override_ranged_h,tag=ca.si_head] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_ranged_b,tag=ca.si_body] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_ranged_l,tag=ca.si_legs] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_ranged_f,tag=ca.si_feet] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_ranged_o,tag=ca.si_offh] run scoreboard players set $status_override ca.status_var 1

execute if score $status_override ca.status_var matches 1.. run function cartographer_custom_statuses:apply_status/save/override/do

scoreboard players set $need_check ca.status_var 0
execute if score $do_apply_status ca.status_var matches 1.. run scoreboard players set $need_check ca.status_var 1
execute if score $do_apply_effects ca.status_var matches 1.. run scoreboard players set $need_check ca.status_var 1

#Then find the projectile(s) and if it is an arrow, put a marker on top of it.
execute if score $do_apply_status ca.status_var matches 1.. run scoreboard players operation $entropy ca.player_entropy = @s ca.player_entropy
execute if score $need_check ca.status_var matches 1.. as @e[type=#cartographer_custom_statuses:bow_allowed_projectile,distance=..7,limit=3,sort=nearest,nbt=!{inGround:1b}] run function cartographer_custom_statuses:player/custom_inflict/arrow_tracker/create_marker