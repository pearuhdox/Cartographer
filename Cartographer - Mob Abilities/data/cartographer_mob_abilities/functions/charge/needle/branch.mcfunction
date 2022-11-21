#Summon Projectiles
execute unless entity @s[tag=ca.shoot_custom] if score $needle_mod ability_charge matches 1 anchored eyes facing entity @p feet positioned ^2 ^ ^ run function cartographer_mob_abilities:charge/needle/needle_branch
execute unless entity @s[tag=ca.shoot_custom] if score $needle_mod ability_charge matches 6 anchored eyes facing entity @p feet positioned ^-2 ^ ^ run function cartographer_mob_abilities:charge/needle/needle_branch

execute if entity @s[tag=ca.shoot_custom] if score $needle_mod ability_charge matches 1 anchored eyes facing entity @p feet positioned ^ ^ ^0.5 run function cartographer_mob_abilities:charge/needle/create_projectile
execute if entity @s[tag=ca.shoot_custom] if score $needle_mod ability_charge matches 6 anchored eyes facing entity @p feet positioned ^ ^ ^0.5 run function cartographer_mob_abilities:charge/needle/create_projectile
