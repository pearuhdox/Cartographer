playsound minecraft:entity.firework_rocket.large_blast player @s ~ ~ ~ 5 1.5

kill @e[type=#cartographer_custom_enchantments:bow_allowed_projectile,tag=ca.custom_just_fired,distance=..12]

scoreboard players set $do_apply_effects ca.status_var 0
scoreboard players set $do_apply_status ca.status_var 0
execute if entity @s[tag=ca.deadeye_mainhand] run function cartographer_custom_statuses:apply_effects/save/mainhand
execute if entity @s[tag=ca.deadeye_mainhand] run function cartographer_custom_statuses:apply_self/save/mainhand
execute if entity @s[tag=ca.deadeye_mainhand] run function cartographer_custom_statuses:apply_status/save/mainhand

execute if entity @s[tag=ca.deadeye_offhand] unless entity @s[tag=ca.deadeye_mainhand] run function cartographer_custom_statuses:apply_effects/save/offhand
execute if entity @s[tag=ca.deadeye_offhand] unless entity @s[tag=ca.deadeye_mainhand] run function cartographer_custom_statuses:apply_self/save/offhand
execute if entity @s[tag=ca.deadeye_offnhand] unless entity @s[tag=ca.deadeye_mainhand] run function cartographer_custom_statuses:apply_status/save/offhand


function cartographer_custom_enchantments:enchant_effects/deadeye/calc_enchant

scoreboard players set $range ca.deadeye 12
scoreboard players operation $range ca.deadeye *= $val ca.attr_ranged_speed
scoreboard players operation $range ca.deadeye /= $100 ca.CONSTANT


tag @s add ca.deadeye_owner
function cartographer_custom_enchantments:enchant_effects/deadeye/start
tag @s remove ca.deadeye_owner

execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @s ca.linger_cdl 300

function #minecraft:cartographer/events/enchantments/ranged/deadeye