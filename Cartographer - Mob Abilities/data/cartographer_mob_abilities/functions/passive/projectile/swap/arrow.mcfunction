function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds

data modify storage cartographer_mob_abilities:projectiles DataTemplate.Owner set from entity @s Owner

execute unless data entity @s power[0] run function cartographer_mob_abilities:projectiles/target/along_motion
execute if data entity @s power[0] run function cartographer_mob_abilities:projectiles/target/along_power

function cartographer_mob_abilities:projectiles/create/arrow


kill @s