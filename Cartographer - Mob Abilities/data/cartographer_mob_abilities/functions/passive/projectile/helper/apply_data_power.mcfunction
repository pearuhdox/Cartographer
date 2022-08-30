execute if data storage cartographer_mob_abilities:passive_projectile Projectile.power[0] run data modify entity @s power set from storage cartographer_mob_abilities:passive_projectile Projectile.power
execute unless data storage cartographer_mob_abilities:passive_projectile Projectile.power[0] run data modify entity @s power set from storage cartographer_mob_abilities:passive_projectile Projectile.Motion
data modify entity @s Owner set from storage cartographer_mob_abilities:passive_projectile Projectile.Owner

execute unless data storage cartographer_mob_abilities:passive_projectile Projectile.power[0] run function cartographer_mob_abilities:passive/projectile/helper/power_modify_branch

tag @s remove new_proj_replace