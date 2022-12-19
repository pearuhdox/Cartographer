function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds
execute unless entity @s[type=vex] run kill @s
execute if entity @s[type=vex] run function cartographer_mob_abilities:passive/projectile/swap/remove/vex

execute if entity @s[type=evoker_fangs] run function cartographer_mob_abilities:passive/projectile/swap/remove/fangs

scoreboard players set $projectile_swap ca.mob_var 1