execute if entity @s[tag=ca.override_crit_h,tag=ca.ae_head] run function cartographer_custom_statuses:apply_effects/save/override/head
execute if entity @s[tag=ca.override_crit_b,tag=ca.ae_body] run function cartographer_custom_statuses:apply_effects/save/override/body
execute if entity @s[tag=ca.override_crit_l,tag=ca.ae_legs] run function cartographer_custom_statuses:apply_effects/save/override/legs
execute if entity @s[tag=ca.override_crit_f,tag=ca.ae_feet] run function cartographer_custom_statuses:apply_effects/save/override/feet
execute if entity @s[tag=ca.override_crit_o,tag=ca.ae_offh] run function cartographer_custom_statuses:apply_effects/save/override/offhand
execute if entity @s[tag=ca.override_crit_m,tag=ca.ae_main] run function cartographer_custom_statuses:apply_effects/save/override/mainhand

execute if entity @s[tag=ca.override_crit_h,tag=ca.as_head] run function cartographer_custom_statuses:apply_self/save/override/head
execute if entity @s[tag=ca.override_crit_b,tag=ca.as_body] run function cartographer_custom_statuses:apply_self/save/override/body
execute if entity @s[tag=ca.override_crit_l,tag=ca.as_legs] run function cartographer_custom_statuses:apply_self/save/override/legs
execute if entity @s[tag=ca.override_crit_f,tag=ca.as_feet] run function cartographer_custom_statuses:apply_self/save/override/feet
execute if entity @s[tag=ca.override_crit_o,tag=ca.as_offh] run function cartographer_custom_statuses:apply_self/save/override/offhand
execute if entity @s[tag=ca.override_crit_m,tag=ca.as_main] run function cartographer_custom_statuses:apply_self/save/override/mainhand

execute if entity @s[tag=ca.override_crit_h,tag=ca.si_head] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_crit_b,tag=ca.si_body] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_crit_l,tag=ca.si_legs] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_crit_f,tag=ca.si_feet] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_crit_o,tag=ca.si_offh] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_crit_m,tag=ca.si_main] run scoreboard players set $status_override ca.status_var 1