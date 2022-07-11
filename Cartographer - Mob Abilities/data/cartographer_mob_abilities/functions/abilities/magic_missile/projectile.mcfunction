tag @s add checked

execute unless entity @s[tag=ca.blazing] unless entity @s[tag=ca.glacial] unless entity @s[tag=ca.overloading] unless entity @s[tag=ca.horrifying] unless entity @s[tag=ca.venemous] unless entity @s[tag=ca.zephyrous] unless entity @s[tag=ca.volatile] run particle minecraft:witch ~ ~1 ~ 0.1 0.1 0.1 1 1 normal @a

execute if entity @s[tag=ca.blazing] run particle minecraft:flame ~ ~1 ~ 0.1 0.1 0.1 0.07 1 normal @a
execute if entity @s[tag=ca.glacial] run particle minecraft:item_snowball ~ ~1 ~ 0.1 0.1 0.1 0.3 2 normal @a
execute if entity @s[tag=ca.overloading] run particle minecraft:electric_spark ~ ~1 ~ 0.1 0.1 0.1 0.5 3 normal @a
execute if entity @s[tag=ca.venemous] run particle minecraft:item_slime ~ ~1 ~ 0.1 0.1 0.1 0.3 2 normal @a
execute if entity @s[tag=ca.zephyrous] run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.2 0.2 0.2 0.1 4 normal @a
execute if entity @s[tag=ca.horrifying] run particle minecraft:dust_color_transition 1 0 1 1 0 0 1 ~ ~1 ~ 0.2 0.2 0.2 0.1 4 normal @a
execute if entity @s[tag=ca.volatile] run particle minecraft:smoke ~ ~1 ~ 0.1 0.1 0.1 0.1 1 normal @a

execute if entity @s[tag=ca.volatile] run playsound minecraft:entity.creeper.primed hostile @a[distance=..10] ~ ~ ~ 1 1.5 0.5

execute anchored eyes facing entity @p feet positioned ^ ^ ^0.8 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.3 ~ ~

#Condition 1: Projectile is attacked by some kind of damage, and will thus detonate.
execute unless entity @e[type=sheep,distance=..0.5,tag=magic_missile_hitbox] run function cartographer_mob_abilities:abilities/magic_missile/detonate

#Condition 2: Projectile collides with a wall, and will thus detonate.
execute unless block ~ ~1 ~ #bb:can_raycast if score @s ca.ability_dmg matches 0.. run function cartographer_mob_abilities:abilities/magic_missile/detonate

#Condition 3: Projectile is within 0.75 blocks of a player and will thus detonate.
execute if entity @a[distance=..0.75] if score @s ca.ability_dmg matches 0.. run function cartographer_mob_abilities:abilities/magic_missile/detonate