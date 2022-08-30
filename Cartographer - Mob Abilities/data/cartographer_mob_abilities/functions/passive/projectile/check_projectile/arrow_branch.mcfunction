execute as @s[type=wither_skeleton,tag=ca.prevent_effects] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/prevent_wither_fire_branch

execute as @s[tag=ca.quiver] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/quiver_branch
