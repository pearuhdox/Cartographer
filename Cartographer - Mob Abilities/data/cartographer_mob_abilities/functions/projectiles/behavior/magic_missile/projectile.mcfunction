execute if entity @s[tag=checked] run function cartographer_mob_abilities:projectiles/behavior/magic_missile/projectile_on_checked

#execute unless entity @s[tag=checked] run tp @s ~ ~-128 ~
tag @s add checked