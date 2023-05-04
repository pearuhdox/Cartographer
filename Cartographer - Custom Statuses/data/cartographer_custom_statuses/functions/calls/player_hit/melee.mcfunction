scoreboard players set $do_apply_effects ca.status_var 0
scoreboard players set $do_status_inflict ca.status_var 0

data modify storage cartographer_custom_statuses:apply_effects data set value {}
data modify storage cartographer_custom_statuses:status_inflict data set value {}

execute if entity @s[tag=ca.si_main] run function cartographer_custom_statuses:status_inflict/save/mainhand
execute if entity @s[tag=ca.ae_main] run function cartographer_custom_statuses:apply_effects/save/mainhand

execute if score $do_status_inflict ca.status_var matches 1.. at @s run scoreboard players operation $entropy ca.player_entropy = @s ca.player_entropy

tag @s add ca.inflict_cause