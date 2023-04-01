summon area_effect_cloud ~ ~ ~ {Particle:"effect",Radius:2.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,WaitTime:20,Motion:[0.0,0.0,0.0],Tags:["ca.parting_gift_cloud","ca.new_cloud"]}


scoreboard players set $blazing ca.death_traits 0
execute if entity @s[tag=ca.blazing] run scoreboard players set $blazing ca.death_traits 1

scoreboard players set $glacial ca.death_traits 0
execute if entity @s[tag=ca.glacial] run scoreboard players set $glacial ca.death_traits 1

scoreboard players set $overloading ca.death_traits 0
execute if entity @s[tag=ca.overloading] run scoreboard players set $overloading ca.death_traits 1

scoreboard players set $venemous ca.death_traits 0
execute if entity @s[tag=ca.venemous] run scoreboard players set $venemous ca.death_traits 1

scoreboard players set $horrifying ca.death_traits 0
execute if entity @s[tag=ca.horrifying] run scoreboard players set $horrifying ca.death_traits 1

scoreboard players set $zephyrous ca.death_traits 0
execute if entity @s[tag=ca.zephyrous] run scoreboard players set $zephyrous ca.death_traits 1

scoreboard players set $celestial ca.death_traits 0
execute if entity @s[tag=ca.celestial] run scoreboard players set $celestial ca.death_traits 1

scoreboard players set $webbing ca.death_traits 0
execute if entity @s[tag=ca.webbing] run scoreboard players set $webbing ca.death_traits 1

scoreboard players set $cursing ca.death_traits 0
execute if entity @s[tag=ca.cursing] run scoreboard players set $cursing ca.death_traits 1

execute as @e[type=area_effect_cloud,tag=ca.new_cloud,limit=1] at @s run function cartographer_mob_abilities:death/parting_gift/cloud/setup