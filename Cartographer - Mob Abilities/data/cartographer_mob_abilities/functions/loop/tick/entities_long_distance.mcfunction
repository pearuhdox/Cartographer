#Run Projectile Replace Passives
execute as @s[type=#bb:hostile,tag=ca.shoot_fire_charge] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile
execute as @s[type=#bb:hostile,tag=ca.shoot_fireball] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile
execute as @s[type=#bb:hostile,tag=ca.shoot_wither_skull] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile
execute as @s[type=#bb:hostile,tag=ca.shoot_dragon_fireball] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile
execute as @s[type=#bb:hostile,tag=ca.shoot_shulker_bullet] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile
execute as @s[type=#bb:hostile,tag=ca.shoot_potion] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile

#Armor Stand Effects
execute as @s[type=armor_stand] at @s run function cartographer_mob_abilities:loop/tick/armor_stand_branch

#Run Projectile Wither Skull/Dragon Fireball Fix This is Dumb
execute as @s[type=small_fireball,tag=passive_fire_charge] at @s run function cartographer_mob_abilities:passive/projectile/fix_projectile
execute as @s[type=fireball,tag=passive_fireball] at @s run function cartographer_mob_abilities:passive/projectile/fix_projectile
execute as @s[type=wither_skull,tag=passive_wither_skull] at @s run function cartographer_mob_abilities:passive/projectile/fix_projectile
execute as @s[type=dragon_fireball,tag=passive_dragon_fireball] at @s run function cartographer_mob_abilities:passive/projectile/fix_projectile
execute as @s[type=potion,tag=passive_potion] at @s run function cartographer_mob_abilities:passive/projectile/fix_projectile

#Run Rift Spot Detonation
execute if entity @s[type=area_effect_cloud,tag=rift_spot] if score @s ca.lifetime matches 1 run function cartographer_mob_abilities:abilities/rift/detonate
scoreboard players remove @s[type=area_effect_cloud,tag=rift_spot] ca.lifetime 1