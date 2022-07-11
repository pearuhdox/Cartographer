#Runs the fire charge projectile passive
data remove storage cartographer_mob_abilities:projectile data.effects

data modify storage cartographer_mob_abilities:projectile data.effects set from entity @s HandItems[1].tag.CustomPotionEffects
data modify storage cartographer_mob_abilities:projectile data.color set from entity @s HandItems[1].tag.CustomPotionColor
data modify storage cartographer_mob_abilities:projectile data.id set from entity @s HandItems[1].id

execute as @s[tag=ca.shoot_fire_charge] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/fire_charge
execute as @s[tag=ca.shoot_fireball] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/fireball
execute as @s[tag=ca.shoot_wither_skull] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/wither_skull
execute as @s[type=!ghast,tag=ca.shoot_dragon_fireball] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/dragon_fireball
execute as @s[tag=ca.shoot_shulker_bullet] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/shulker_bullet
execute as @s[tag=ca.shoot_potion] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/potion

execute as @s[type=ghast,tag=ca.shoot_dragon_fireball] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=1,distance=..6,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/dragon_fireball_ghast

execute as @s[tag=ca.quiver] at @s run function cartographer_mob_abilities:passive/projectile/quiver/rng
execute as @s[tag=ca.quiver] at @s as @e[type=arrow,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 1.. run function cartographer_mob_abilities:passive/projectile/quiver/modify_arrow

execute as @s[tag=ca.potion_bag] at @s run function cartographer_mob_abilities:passive/projectile/potion_bag/splash/rng
execute as @s[tag=ca.potion_bag] at @s as @e[type=potion,tag=!passive_replaced_projectile,limit=1,distance=..4,sort=nearest] unless score @s ca.lifetime matches 1.. run function cartographer_mob_abilities:passive/projectile/potion_bag/splash/modify_potion