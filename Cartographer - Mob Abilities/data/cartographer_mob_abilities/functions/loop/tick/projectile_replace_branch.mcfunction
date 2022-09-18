#Run Projectile Replace Passives
execute as @s[tag=ca.shoot_fire_charge] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_fireball] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_wither_skull] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_dragon_fireball] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_shulker_bullet] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_potion] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_arrow] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_trident] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_needle] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_grenade] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_trap] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_magic_missile] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main
execute as @s[tag=ca.shoot_sonic_charge] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main

execute as @s[type=wither_skeleton,tag=ca.prevent_effects] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main