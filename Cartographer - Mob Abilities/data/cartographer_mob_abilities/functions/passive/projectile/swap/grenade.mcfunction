function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds

data modify storage cartographer_mob_abilities:projectiles DataTemplate.Owner set from entity @s Owner

execute unless data entity @s power[0] run function cartographer_mob_abilities:projectiles/target/along_motion
execute if data entity @s power[0] run function cartographer_mob_abilities:projectiles/target/along_power

execute if entity @s[type=shulker_bullet] run function cartographer_mob_abilities:projectiles/target/player
execute if entity @s[type=shulker_bullet] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~2 ~

function cartographer_mob_abilities:projectiles/create/grenade


kill @s