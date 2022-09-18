execute store result score $projectile_damage ca.ability_dmg run attribute @s generic.attack_damage get
data modify storage cartographer_mob_abilities:projectile_tag_save Tags set value []
execute if entity @s[tag=ca.touch] run data modify storage cartographer_mob_abilities:projectile_tag_save Tags set from entity @s Tags

execute if entity @s[tag=ca.alchemist,tag=ca.touch] run function cartographer_mob_abilities:passive/projectile/helper/save_alchemist

execute as @s[tag=ca.shoot_fire_charge] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/fire_charge
execute as @s[tag=ca.shoot_fireball] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/fireball
execute as @s[tag=ca.shoot_wither_skull] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/wither_skull
execute as @s[tag=ca.shoot_dragon_fireball] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/dragon_fireball
execute as @s[tag=ca.shoot_shulker_bullet] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/shulker_bullet
execute as @s[tag=ca.shoot_potion] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/potion
execute as @s[tag=ca.shoot_arrow] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/arrow
execute as @s[tag=ca.shoot_trident] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/trident
execute as @s[tag=ca.shoot_needle] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/needle
execute as @s[tag=ca.shoot_grenade] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/grenade
execute as @s[tag=ca.shoot_trap] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/trap
execute as @s[tag=ca.shoot_magic_missile] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/magic_missile
execute as @s[tag=ca.shoot_sonic_charge] at @s if entity @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/sonic_charge
