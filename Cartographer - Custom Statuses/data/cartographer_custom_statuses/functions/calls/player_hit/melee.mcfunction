scoreboard players set $do_apply_effects ca.status_var 0
scoreboard players set $do_status_inflict ca.status_var 0
scoreboard players set $status_override ca.status_var 0

data modify storage cartographer_custom_statuses:apply_effects data set value {}
data modify storage cartographer_custom_statuses:status_inflict data set value {}

execute if entity @s[tag=ca.si_main] run function cartographer_custom_statuses:status_inflict/save/mainhand
execute if entity @s[tag=ca.ae_main] run function cartographer_custom_statuses:apply_effects/save/mainhand

execute if entity @s[tag=ca.override_melee_h,tag=ca.ae_head] run function cartographer_custom_statuses:apply_effects/save/override/head
execute if entity @s[tag=ca.override_melee_b,tag=ca.ae_body] run function cartographer_custom_statuses:apply_effects/save/override/body
execute if entity @s[tag=ca.override_melee_l,tag=ca.ae_legs] run function cartographer_custom_statuses:apply_effects/save/override/legs
execute if entity @s[tag=ca.override_melee_f,tag=ca.ae_feet] run function cartographer_custom_statuses:apply_effects/save/override/feet
execute if entity @s[tag=ca.override_melee_o,tag=ca.ae_offh] run function cartographer_custom_statuses:apply_effects/save/override/offhand

execute if entity @s[tag=ca.override_melee_h,tag=ca.si_head] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_melee_b,tag=ca.si_body] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_melee_l,tag=ca.si_legs] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_melee_f,tag=ca.si_feet] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_melee_o,tag=ca.si_offh] run scoreboard players set $status_override ca.status_var 1

execute if score $status_override ca.status_var matches 1.. run function cartographer_custom_statuses:status_inflict/save/override/do

execute if score $do_status_inflict ca.status_var matches 1.. at @s run scoreboard players operation $entropy ca.player_entropy = @s ca.player_entropy

tag @s add ca.inflict_cause