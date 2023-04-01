scoreboard players set $witch ca.xyz_convert 0
execute if entity @s[type=witch] run scoreboard players set $witch ca.xyz_convert 1

scoreboard players set $blaze ca.xyz_convert 0
execute if entity @s[type=blaze] run scoreboard players set $blaze ca.xyz_convert 1

#Collect Damage Here
execute unless entity @s[type=shulker] store result score $damage ca.ability_dmg run attribute @s generic.attack_damage get
execute if entity @s[type=shulker] store result score $damage ca.ability_dmg run attribute @s generic.armor_toughness get

#Alchemist Data Saving
execute if entity @s[tag=ca.alchemist,tag=ca.touch] run function cartographer_mob_abilities:passive/projectile/helper/save_alchemist

#For Each Entity With Specific Data Get Said Data
execute if entity @s[tag=ca.sh_arrow] run function cartographer_mob_abilities:projectiles/data/get/arrow

execute if entity @s[tag=ca.sh_potion] run function cartographer_mob_abilities:projectiles/data/get/potion

#Save Tags Here
execute if entity @s[tag=ca.touch] run function cartographer_mob_abilities:projectiles/data/get/all_traits

execute if entity @s[tag=ca.quiver] run function cartographer_mob_abilities:projectiles/data/get/quiver

#Lightning Specific Data And Tag Population
execute if entity @s[tag=ca.sh_lightning] run data modify storage cartographer_mob_abilities:storm_tags Tags set value []
execute if entity @s[tag=ca.sh_lightning] run function cartographer_mob_abilities:abilities/storm/populate_tags

#Set Projectile Owner
data modify storage cartographer_mob_abilities:projectiles DataTemplate.Owner set from entity @s UUID
#Refactored
execute as @s[tag=ca.sh_arrow] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/arrow
execute as @s[tag=ca.sh_trident] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/trident
execute as @s[tag=ca.sh_potion] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/potion

execute as @s[tag=ca.sh_spit] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/spit

execute as @s[tag=ca.sh_shulker_bullet] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/shulker_bullet

execute as @s[tag=ca.sh_wither_skull] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/wither_skull
execute as @s[tag=ca.sh_small_fireball] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/fire_charge
execute as @s[tag=ca.sh_fireball] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/fireball
execute as @s[tag=ca.sh_dragon_fireball] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/dragon_fireball

execute as @s[tag=ca.sh_trap] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/trap
execute as @s[tag=ca.sh_grenade] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/grenade

execute as @s[tag=ca.sh_magic_missile] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/magic_missile
execute as @s[tag=ca.sh_needle] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/needle
execute as @s[tag=ca.sh_rift] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/rift

execute as @s[tag=ca.sh_enderpearl] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/enderpearl

execute as @s[tag=ca.sh_boomerang] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/boomerang

execute as @s[tag=ca.sh_lightning] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/lightning

execute as @s[tag=ca.sh_evoker_fang] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] at @s unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/evoker_fang

#Shoot No Projectile
execute as @s[tag=ca.sh_empty] at @s as @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/empty


scoreboard players set $projectile_swap ca.mob_var 0