function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds

data modify storage cartographer_mob_abilities:projectiles DataTemplate.Owner set from entity @s Owner

execute unless data entity @s power[0] run function cartographer_mob_abilities:projectiles/target/along_motion
execute if data entity @s power[0] run function cartographer_mob_abilities:projectiles/target/along_power

function cartographer_mob_abilities:projectiles/create/shulker_bullet

execute unless entity @s[type=vex] run kill @s
execute if entity @s[type=vex] run function cartographer_mob_abilities:passive/projectile/swap/remove/vex

execute if entity @s[type=evoker_fangs] run function cartographer_mob_abilities:passive/projectile/swap/remove/fangs

scoreboard players set $projectile_swap ca.mob_var 1