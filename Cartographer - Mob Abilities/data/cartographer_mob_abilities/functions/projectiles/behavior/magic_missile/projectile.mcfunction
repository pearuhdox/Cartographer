execute unless entity @s[tag=ca.blazing] unless entity @s[tag=ca.glacial] unless entity @s[tag=ca.overloading] unless entity @s[tag=ca.horrifying] unless entity @s[tag=ca.venemous] unless entity @s[tag=ca.zephyrous] unless entity @s[tag=ca.volatile] run particle minecraft:witch ~ ~1 ~ 0.1 0.1 0.1 1 1 normal @a

execute positioned ~ ~1 ~ run function cartographer_mob_abilities:ability_traits/trait_warnings/projectile

execute if score @s ca.arm_time matches 10.. unless entity @a[distance=..2] anchored eyes facing entity @p feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.3 ~ ~
execute if score @s ca.arm_time matches 10.. if entity @a[distance=..2] run tp @s ^ ^ ^0.3 ~ 0

execute unless score @s ca.arm_time matches 10.. run tp @s ^ ^ ^0.3 ~ ~

scoreboard players add @s ca.arm_time 1

#Condition 1: Projectile is attacked by some kind of damage, and will thus detonate.
scoreboard players set $check_sheep_missile ca.mob_var 1
execute on passengers if entity @s[type=sheep,tag=magic_missile_hitbox,nbt=!{AbsorptionAmount:0.0f}] run scoreboard players set $check_sheep_missile ca.mob_var 0

execute if score $check_sheep_missile ca.mob_var matches 1.. run function cartographer_mob_abilities:projectiles/behavior/magic_missile/detonate

#Condition 2: Projectile collides with a wall, and will thus detonate.
execute unless block ~ ~1 ~ #bb:can_raycast if score @s ca.ability_dmg matches 0.. run scoreboard players set $check_sheep_missile ca.mob_var 1
execute unless block ~ ~1 ~ #bb:can_raycast if score @s ca.ability_dmg matches 0.. run function cartographer_mob_abilities:projectiles/behavior/magic_missile/detonate

#Condition 3: Projectile hits the player and detonates.
execute if entity @a[dx=0] positioned ~-0.4 ~-0.4 ~-0.4 if entity @a[dx=0] positioned ~0.4 ~0.4 ~0.4 if score @s ca.ability_dmg matches 0.. run function cartographer_mob_abilities:projectiles/behavior/magic_missile/detonate
