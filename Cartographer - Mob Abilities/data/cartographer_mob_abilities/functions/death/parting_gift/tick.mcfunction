execute if score @s ca.lifetime = @s ca.death_traits run function cartographer_mob_abilities:death/parting_gift/detonate

scoreboard players add @s ca.lifetime 1

execute unless entity @s[tag=on_ground] if entity @s[nbt={OnGround:1b}] run tag @s add on_ground

particle minecraft:smoke ~ ~0.5 ~ 0 0 0 0.05 1 normal

execute if entity @s[tag=ca.blazing] run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.05 1 normal
execute if entity @s[tag=ca.glacial] run particle minecraft:item_snowball ~ ~0.75 ~ 0 0 0 0.05 1 normal
execute if entity @s[tag=ca.overloading] run particle minecraft:electric_spark ~ ~0.75 ~ 0.3 0.3 0.3 0.05 1 normal
execute if entity @s[tag=ca.venemous] run particle minecraft:item_slime ~ ~0.75 ~ 0 0 0 0.05 1 normal
execute if entity @s[tag=ca.zephyrous] run particle minecraft:cloud ~ ~0.75 ~ 0 0 0 0.05 1 normal
execute if entity @s[tag=ca.celestial] run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0 0 0.05 1 normal
execute if entity @s[tag=ca.horrifying] run particle minecraft:sculk_soul ~ ~0.75 ~ 0 0 0 0.05 1 normal
execute if entity @s[tag=ca.webbing] run particle minecraft:block minecraft:cobweb ~ ~0.5 ~ 0.3 0.3 0.3 0.05 1 normal
execute if entity @s[tag=ca.curse] run particle minecraft:ash ~ ~0.75 ~ 0.3 0.3 0.3 0.05 8 normal


execute if entity @s[tag=ca.lingering] run particle minecraft:effect ~ ~0.75 ~ 0.15 0 0.15 0.05 1 normal

execute if entity @s[tag=on_ground] run tp @s ~ ~ ~ ~25 ~

scoreboard players operation $acrobatic_mod ca.death_traits = @s ca.lifetime
scoreboard players operation $acrobatic_mod ca.death_traits %= $15 ca.CONSTANT

execute if score @s ca.lifetime matches 1.. if entity @s[tag=ca.chaser,tag=on_ground] if score $acrobatic_mod ca.death_traits matches 0 run function cartographer_mob_abilities:death/parting_gift/acrobatic_bounce