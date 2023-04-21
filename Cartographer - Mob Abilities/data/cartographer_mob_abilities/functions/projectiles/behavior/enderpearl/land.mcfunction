scoreboard players set $pearl_flight ca.mob_var 1

execute on vehicle if entity @s[type=ender_pearl] run scoreboard players set $pearl_flight ca.mob_var 0

execute if score $pearl_flight ca.mob_var matches 1 run function cartographer_mob_abilities:projectiles/behavior/enderpearl/do_land