execute unless data storage cartographer_mob_abilities:passive_projectile Projectile.power[0] run data modify entity @s Motion set from storage cartographer_mob_abilities:passive_projectile Projectile.Motion
execute if data storage cartographer_mob_abilities:passive_projectile Projectile.power[0] run data modify entity @s Motion set from storage cartographer_mob_abilities:passive_projectile Projectile.power

data modify entity @s Owner set from storage cartographer_mob_abilities:passive_projectile Projectile.Owner

execute if entity @s[type=potion] run function cartographer_mob_abilities:passive/projectile/helper/potion_branch
execute if entity @s[type=arrow] run function cartographer_mob_abilities:passive/projectile/helper/arrow_branch
execute if entity @s[type=trident] run function cartographer_mob_abilities:passive/projectile/helper/trident_branch

execute if entity @s[type=armor_stand] run function cartographer_mob_abilities:passive/projectile/helper/set_tags

execute if entity @s[type=armor_stand,tag=passive_grenade] run function cartographer_mob_abilities:passive/projectile/helper/modify_speed_motion_grenade

execute if entity @s[type=armor_stand,tag=passive_trap] run function cartographer_mob_abilities:passive/projectile/helper/modify_speed_motion_trap


tag @s remove new_proj_replace