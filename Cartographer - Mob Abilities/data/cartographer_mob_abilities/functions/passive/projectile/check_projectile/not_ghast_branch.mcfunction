scoreboard players set $witch ca.xyz_convert 0
execute if entity @s[type=witch] run scoreboard players set $witch ca.xyz_convert 1

scoreboard players set $blaze ca.xyz_convert 0
execute if entity @s[type=blaze] run scoreboard players set $blaze ca.xyz_convert 1

#Collect Damage Here
execute store result score $damage ca.ability_dmg run attribute @s generic.attack_damage get

#Alchemist Data Saving
execute if entity @s[tag=ca.alchemist,tag=ca.touch] run function cartographer_mob_abilities:passive/projectile/helper/save_alchemist

#For Each Entity With Specific Data Get Said Data
execute if entity @s[tag=ca.shoot_arrow] run function cartographer_mob_abilities:projectiles/data/get/arrow

execute if entity @s[tag=ca.shoot_potion] run function cartographer_mob_abilities:projectiles/data/get/potion

#Save Tags Here
execute if entity @s[tag=ca.touch] run function cartographer_mob_abilities:projectiles/data/get/all_traits

#Lightning Specific Data And Tag Population
execute if entity @s[tag=ca.shoot_lightning] run data modify storage cartographer_mob_abilities:storm_tags Tags set value []
execute if entity @s[tag=ca.shoot_lightning] run function cartographer_mob_abilities:abilities/storm/populate_tags

#Set Projectile Owner
data modify storage cartographer_mob_abilities:projectiles DataTemplate.Owner set from entity @s UUID

#Refactored
execute as @s[tag=ca.shoot_arrow] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/arrow
execute as @s[tag=ca.shoot_trident] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/trident
execute as @s[tag=ca.shoot_potion] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/potion

execute as @s[tag=ca.shoot_shulker_bullet] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/shulker_bullet

execute as @s[tag=ca.shoot_wither_skull] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/wither_skull
execute as @s[tag=ca.shoot_small_fireball] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/fire_charge
execute as @s[tag=ca.shoot_fireball] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/fireball
execute as @s[tag=ca.shoot_dragon_fireball] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/dragon_fireball

execute as @s[tag=ca.shoot_trap] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/trap
execute as @s[tag=ca.shoot_grenade] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/grenade

execute as @s[tag=ca.shoot_magic_missile] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/magic_missile
execute as @s[tag=ca.shoot_needle] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/needle
execute as @s[tag=ca.shoot_rift] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/rift

execute as @s[tag=ca.shoot_lightning] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/lightning


#Shoot No Projectile
execute as @s[tag=ca.shoot_empty] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/empty