execute unless entity @s[tag=ca.blazing] unless entity @s[tag=ca.glacial] unless entity @s[tag=ca.overloading] unless entity @s[tag=ca.horrifying] unless entity @s[tag=ca.venemous] unless entity @s[tag=ca.zephyrous] unless entity @s[tag=ca.volatile] run particle minecraft:witch ~ ~1 ~ 0.1 0.1 0.1 1 1 normal @a

execute positioned ~ ~1 ~ run function cartographer_mob_abilities:ability_traits/trait_warnings/projectile

execute if score @s ca.arm_time matches 20.. anchored eyes facing entity @p feet positioned ^ ^ ^0.7 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.3 ~ ~
execute unless score @s ca.arm_time matches 20.. run tp @s ^ ^ ^0.3 ~ ~

scoreboard players add @s ca.arm_time 1

#Condition 1: Projectile is attacked by some kind of damage, and will thus detonate.
execute unless entity @e[type=sheep,distance=..0.5,tag=magic_missile_hitbox] run function cartographer_mob_abilities:abilities/magic_missile/detonate

#Condition 2: Projectile collides with a wall, and will thus detonate.
execute unless block ~ ~1 ~ #bb:can_raycast if score @s ca.ability_dmg matches 0.. run function cartographer_mob_abilities:abilities/magic_missile/detonate

#Condition 3: Projectile is within 0.75 blocks of a player and will thus detonate.
execute if entity @a[distance=..0.75] if score @s ca.ability_dmg matches 0.. run function cartographer_mob_abilities:abilities/magic_missile/detonate