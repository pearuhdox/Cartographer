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
execute if entity @s[tag=ca.sh_swap_vex] run function cartographer_mob_abilities:passive/projectile/check_projectile/evoker_branches/vex_swap
execute if entity @s[tag=ca.sh_swap_fangs] run function cartographer_mob_abilities:passive/projectile/check_projectile/evoker_branches/fang_swap

#Shoot No Projectile
execute as @s[tag=ca.sh_empty] at @s as @e[type=#cartographer_mob_abilities:projectile_swap,tag=!passive_replaced_projectile,tag=!vex_checked,limit=3,distance=..4,sort=nearest] unless score @s ca.lifetime matches 0.. run function cartographer_mob_abilities:passive/projectile/swap/empty

execute if score $projectile_swap ca.mob_var matches 1 run data modify entity @s SpellTicks set value 2

scoreboard players set $projectile_swap ca.mob_var 0