execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

scoreboard players add @s ca.lifetime 100

scoreboard players set $cloud_dmg ca.death_traits 3

execute if entity @s[tag=ca.blazing] run scoreboard players set $cloud_dmg ca.death_traits 1
execute if entity @s[tag=ca.venemous] run scoreboard players set $cloud_dmg ca.death_traits 1

execute if entity @s[tag=ca.celestial] as @e[type=#bb:hostile,distance=..8,limit=2,sort=nearest] at @s run function cartographer_mob_abilities:passive/parting_gift/cloud/celestial_heal

execute positioned ~-1.5 ~ ~-1.5 as @a[dx=3,dy=0.01,dz=3,tag=ability_tagged] at @s run function cartographer_mob_abilities:passive/parting_gift/cloud/detonate_player
