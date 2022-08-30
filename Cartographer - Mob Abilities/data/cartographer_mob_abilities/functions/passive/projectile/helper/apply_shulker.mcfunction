data modify entity @s Owner set from storage cartographer_mob_abilities:passive_projectile Projectile.Owner

#data modify entity @s power set from storage cartographer_mob_abilities:passive_projectile Projectile.power
data modify entity @s Motion set from storage cartographer_mob_abilities:passive_projectile Projectile.Motion

data modify entity @s Target set from entity @p UUID

execute if data storage cartographer_mob_abilities:passive_projectile Projectile.power[0] run function cartographer_mob_abilities:passive/projectile/modify_speed_motion
execute unless data storage cartographer_mob_abilities:passive_projectile Projectile.power[0] run function cartographer_mob_abilities:passive/projectile/cut_potion_speed

tag @s remove new_proj_replace
