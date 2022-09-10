execute if entity @s[tag=ca.blazing] run particle minecraft:flame ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal
execute if entity @s[tag=ca.glacial] run particle minecraft:item_snowball ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal
execute if entity @s[tag=ca.overloading] run particle minecraft:electric_spark ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal
execute if entity @s[tag=ca.venemous] run particle minecraft:item_slime ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal
execute if entity @s[tag=ca.zephyrous] run particle minecraft:cloud ~ ~0.5 ~ 0.2 0.2 0.2 0.1 1 normal
execute if entity @s[tag=ca.horrifying] run particle minecraft:sculk_soul ~ ~0.5 ~ 0.2 0.2 0.2 0.1 1 normal
execute if entity @s[tag=ca.alchemist] run particle minecraft:effect ~ ~0.5 ~ 0.2 0.2 0.2 0.1 1 normal

execute if entity @s[nbt={OnGround:1b}] run function cartographer_mob_abilities:charge/grenadier/projectile/attack