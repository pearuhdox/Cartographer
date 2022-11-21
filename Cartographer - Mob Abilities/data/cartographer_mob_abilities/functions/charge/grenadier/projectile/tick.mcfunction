execute positioned ~ ~0.5 ~ run function cartographer_mob_abilities:ability_traits/trait_warnings/projectile

execute if entity @s[tag=!armed] run function cartographer_mob_abilities:charge/grenadier/projectile/start_ring

execute if entity @s[tag=armed] run function cartographer_mob_abilities:charge/grenadier/projectile/arming

execute if score @s ca.arm_time matches 5.. run function cartographer_mob_abilities:charge/grenadier/projectile/attack

execute if entity @s[tag=!armed,nbt={OnGround:1b}] run tag @s add armed