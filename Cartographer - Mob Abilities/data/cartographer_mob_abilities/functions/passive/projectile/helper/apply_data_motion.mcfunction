execute unless data storage cartographer_mob_abilities:passive_projectile Projectile.power[0] run data modify entity @s Motion set from storage cartographer_mob_abilities:passive_projectile Projectile.Motion
execute if data storage cartographer_mob_abilities:passive_projectile Projectile.power[0] run data modify entity @s Motion set from storage cartographer_mob_abilities:passive_projectile Projectile.power

data modify entity @s Owner set from entity @s Owner

execute if entity @s[type=potion] run function cartographer_mob_abilities:passive/projectile/helper/potion_branch
execute if entity @s[type=arrow] run function cartographer_mob_abilities:passive/projectile/helper/arrow_branch

tag @s remove new_proj_replace