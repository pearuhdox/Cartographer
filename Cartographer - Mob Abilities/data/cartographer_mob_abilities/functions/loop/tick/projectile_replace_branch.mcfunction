#Run Projectile Replace Passives
execute as @s[tag=ca.shoot_fire_charge] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_fireball] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_wither_skull] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_dragon_fireball] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_shulker_bullet] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_potion] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_arrow] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main

execute as @s[type=wither_skeleton,tag=ca.prevent_effects] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main