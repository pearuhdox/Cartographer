tag @s add drinking_potion

execute if entity @s[tag=ca.potion_bag] run function cartographer_mob_abilities:passive/projectile/potion_bag/drink/rng
execute if entity @s[tag=ca.potion_bag] if data entity @s ArmorItems[3].id run function cartographer_mob_abilities:passive/projectile/potion_bag/drink/modify_potion