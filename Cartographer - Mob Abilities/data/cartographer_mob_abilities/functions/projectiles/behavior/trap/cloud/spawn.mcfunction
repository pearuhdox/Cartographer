execute if entity @s[tag=!passive_trap] run summon area_effect_cloud ~ ~0.15 ~ {Particle:"crit",Radius:1.4f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,WaitTime:30,Motion:[0.0,0.0,0.0],Tags:["ca.volley_cloud","ca.new_trap_cloud"]}
execute if entity @s[tag=passive_trap] run summon area_effect_cloud ~ ~0.15 ~ {Particle:"crit",Radius:1.4f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,WaitTime:10,Motion:[0.0,0.0,0.0],Tags:["ca.volley_cloud","ca.new_trap_cloud","passive_trap_cloud"]}


scoreboard players set $blazing ca.trap_traits 0
execute if entity @s[tag=ca.blazing] run scoreboard players set $blazing ca.trap_traits 1

scoreboard players set $glacial ca.trap_traits 0
execute if entity @s[tag=ca.glacial] run scoreboard players set $glacial ca.trap_traits 1

scoreboard players set $overloading ca.trap_traits 0
execute if entity @s[tag=ca.overloading] run scoreboard players set $overloading ca.trap_traits 1

scoreboard players set $venemous ca.trap_traits 0
execute if entity @s[tag=ca.venemous] run scoreboard players set $venemous ca.trap_traits 1

scoreboard players set $horrifying ca.trap_traits 0
execute if entity @s[tag=ca.horrifying] run scoreboard players set $horrifying ca.trap_traits 1

scoreboard players set $zephyrous ca.trap_traits 0
execute if entity @s[tag=ca.zephyrous] run scoreboard players set $zephyrous ca.trap_traits 1

scoreboard players set $celestial ca.trap_traits 0
execute if entity @s[tag=ca.celestial] run scoreboard players set $celestial ca.trap_traits 1

scoreboard players set $webbing ca.trap_traits 0
execute if entity @s[tag=ca.webbing] run scoreboard players set $webbing ca.trap_traits 1

scoreboard players set $cursing ca.trap_traits 0
execute if entity @s[tag=ca.cursing] run scoreboard players set $cursing ca.trap_traits 1

scoreboard players set $alchemist ca.trap_traits 0
execute if entity @s[tag=ca.alchemist] run scoreboard players set $alchemist ca.trap_traits 1

execute if score $alchemist ca.trap_traits matches 1 run function cartographer_mob_abilities:projectiles/behavior/trap/cloud/alchemist_copy

scoreboard players operation $damage ca.trap_traits = @s ca.ability_dmg

execute as @e[type=area_effect_cloud,tag=ca.new_trap_cloud,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:projectiles/behavior/trap/cloud/setup