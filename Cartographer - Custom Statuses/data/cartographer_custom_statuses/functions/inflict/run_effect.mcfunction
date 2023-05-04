#Find the thrower for entropy values
function cartographer_custom_statuses:inflict/entropy/identify_player

#This runs!
execute unless score @s ca.lifetime matches 1.. run data modify storage cartographer_custom_statuses:infliction data set value {}
execute unless score @s ca.lifetime matches 1.. run data modify storage cartographer_custom_statuses:infliction data.Item set from entity @s data.Item


execute unless score @s ca.lifetime matches 1.. unless entity @s[tag=ca.pot_mark_linger] align xz positioned ~0.5 ~ ~0.5 run function cartographer_custom_statuses:inflict/proliferate
execute unless score @s ca.lifetime matches 1.. if entity @s[tag=ca.pot_mark_linger] align xz positioned ~0.5 ~ ~0.5 run function cartographer_custom_statuses:inflict/proliferate_lingering

scoreboard players operation $custom_linger ca.lifetime = @s ca.lifetime
scoreboard players operation $custom_linger ca.lifetime %= $20 ca.CONSTANT

scoreboard players set $did_linger_inflict ca.mob_var 0

execute if entity @s[tag=ca.pot_mark_linger] run function cartographer_custom_statuses:inflict/linger_vfx
execute if entity @s[tag=ca.pot_mark_linger] if score $custom_linger ca.lifetime matches 0 if score @s ca.lifetime matches 401..600 as @e[type=#bb:hostile,distance=..3] at @s run function cartographer_custom_statuses:inflict/do_effect
execute if entity @s[tag=ca.pot_mark_linger] if score $custom_linger ca.lifetime matches 0 if score @s ca.lifetime matches 201..400 as @e[type=#bb:hostile,distance=..2.25] at @s run function cartographer_custom_statuses:inflict/do_effect
execute if entity @s[tag=ca.pot_mark_linger] if score $custom_linger ca.lifetime matches 0 if score @s ca.lifetime matches 1..200 as @e[type=#bb:hostile,distance=..1.5] at @s run function cartographer_custom_statuses:inflict/do_effect

execute if score $did_linger_inflict ca.mob_var matches 1.. run scoreboard players operation $did_linger_inflict ca.mob_var *= $100 ca.CONSTANT
execute if score $did_linger_inflict ca.mob_var matches 1.. run scoreboard players operation @s ca.lifetime -= $did_linger_inflict ca.mob_var

execute if score $did_linger_inflict ca.mob_var matches 1.. run scoreboard players reset $inflict ca.damage_queue

scoreboard players remove @s ca.lifetime 1

execute unless score @s ca.lifetime matches 1.. run kill @s

execute as @a[tag=ca.pot_thrower] at @s run function cartographer_custom_statuses:inflict/entropy/branch

scoreboard players set $do_chance ca.status_var -1