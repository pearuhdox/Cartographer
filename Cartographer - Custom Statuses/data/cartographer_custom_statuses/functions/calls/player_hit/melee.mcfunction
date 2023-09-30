scoreboard players set $do_apply_effects ca.status_var 0
scoreboard players set $do_status_inflict ca.status_var 0
scoreboard players set $status_override ca.status_var 0

data modify storage cartographer_custom_statuses:apply_effects data set value {}
data modify storage cartographer_custom_statuses:status_inflict data set value {}

execute if entity @s[tag=ca.si_main,tag=!ca.override_crit_m,tag=!ca.override_sprint_m,tag=!ca.override_sneak_m] run function cartographer_custom_statuses:status_inflict/save/mainhand
execute if entity @s[tag=ca.ae_main,tag=!ca.override_crit_m,tag=!ca.override_sprint_m,tag=!ca.override_sneak_m] run function cartographer_custom_statuses:apply_effects/save/mainhand

execute if entity @s[tag=ca.override_melee_h,tag=ca.ae_head] run function cartographer_custom_statuses:apply_effects/save/override/head
execute if entity @s[tag=ca.override_melee_b,tag=ca.ae_body] run function cartographer_custom_statuses:apply_effects/save/override/body
execute if entity @s[tag=ca.override_melee_l,tag=ca.ae_legs] run function cartographer_custom_statuses:apply_effects/save/override/legs
execute if entity @s[tag=ca.override_melee_f,tag=ca.ae_feet] run function cartographer_custom_statuses:apply_effects/save/override/feet
execute if entity @s[tag=ca.override_melee_o,tag=ca.ae_offh] run function cartographer_custom_statuses:apply_effects/save/override/offhand

execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_h,tag=ca.ae_head] run function cartographer_custom_statuses:apply_effects/save/override/head
execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_b,tag=ca.ae_body] run function cartographer_custom_statuses:apply_effects/save/override/body
execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_l,tag=ca.ae_legs] run function cartographer_custom_statuses:apply_effects/save/override/legs
execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_f,tag=ca.ae_feet] run function cartographer_custom_statuses:apply_effects/save/override/feet
execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_o,tag=ca.ae_offh] run function cartographer_custom_statuses:apply_effects/save/override/offhand
execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_m,tag=ca.ae_main] run function cartographer_custom_statuses:apply_effects/save/override/mainhand

execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_h,tag=ca.ae_head] run function cartographer_custom_statuses:apply_effects/save/override/head
execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_b,tag=ca.ae_body] run function cartographer_custom_statuses:apply_effects/save/override/body
execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_l,tag=ca.ae_legs] run function cartographer_custom_statuses:apply_effects/save/override/legs
execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_f,tag=ca.ae_feet] run function cartographer_custom_statuses:apply_effects/save/override/feet
execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_o,tag=ca.ae_offh] run function cartographer_custom_statuses:apply_effects/save/override/offhand
execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_m,tag=ca.ae_main] run function cartographer_custom_statuses:apply_effects/save/override/mainhand

execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_h,tag=ca.ae_head] run function cartographer_custom_statuses:apply_effects/save/override/head
execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_b,tag=ca.ae_body] run function cartographer_custom_statuses:apply_effects/save/override/body
execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_l,tag=ca.ae_legs] run function cartographer_custom_statuses:apply_effects/save/override/legs
execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_f,tag=ca.ae_feet] run function cartographer_custom_statuses:apply_effects/save/override/feet
execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_o,tag=ca.ae_offh] run function cartographer_custom_statuses:apply_effects/save/override/offhand
execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_m,tag=ca.ae_main] run function cartographer_custom_statuses:apply_effects/save/override/mainhand


execute if entity @s[tag=ca.override_melee_h,tag=ca.si_head] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_melee_b,tag=ca.si_body] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_melee_l,tag=ca.si_legs] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_melee_f,tag=ca.si_feet] run scoreboard players set $status_override ca.status_var 1
execute if entity @s[tag=ca.override_melee_o,tag=ca.si_offh] run scoreboard players set $status_override ca.status_var 1

execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_h,tag=ca.si_head] run scoreboard players set $status_override ca.status_var 1
execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_b,tag=ca.si_body] run scoreboard players set $status_override ca.status_var 1
execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_l,tag=ca.si_legs] run scoreboard players set $status_override ca.status_var 1
execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_f,tag=ca.si_feet] run scoreboard players set $status_override ca.status_var 1
execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_o,tag=ca.si_offh] run scoreboard players set $status_override ca.status_var 1
execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_m,tag=ca.si_main] run scoreboard players set $status_override ca.status_var 1

execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_h,tag=ca.si_head] run scoreboard players set $status_override ca.status_var 1
execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_b,tag=ca.si_body] run scoreboard players set $status_override ca.status_var 1
execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_l,tag=ca.si_legs] run scoreboard players set $status_override ca.status_var 1
execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_f,tag=ca.si_feet] run scoreboard players set $status_override ca.status_var 1
execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_o,tag=ca.si_offh] run scoreboard players set $status_override ca.status_var 1
execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_m,tag=ca.si_main] run scoreboard players set $status_override ca.status_var 1

execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_h,tag=ca.si_head] run scoreboard players set $status_override ca.status_var 1
execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_b,tag=ca.si_body] run scoreboard players set $status_override ca.status_var 1
execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_l,tag=ca.si_legs] run scoreboard players set $status_override ca.status_var 1
execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_f,tag=ca.si_feet] run scoreboard players set $status_override ca.status_var 1
execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_o,tag=ca.si_offh] run scoreboard players set $status_override ca.status_var 1
execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_m,tag=ca.si_main] run scoreboard players set $status_override ca.status_var 1


execute if score $status_override ca.status_var matches 1.. run function cartographer_custom_statuses:status_inflict/save/override/do

execute if score $do_status_inflict ca.status_var matches 1.. at @s run scoreboard players operation $entropy ca.player_entropy = @s ca.player_entropy

tag @s add ca.inflict_cause