execute if entity @s[tag=ca.blazing] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ lava keep
execute if entity @s[tag=ca.glacial] align xyz positioned ~0.5 ~ ~0.5 run summon area_effect_cloud ~ ~0.3 ~ {Particle:"snowflake",ReapplicationDelay:20,Radius:0.5f,RadiusPerTick:0.04f,RadiusOnUse:0f,Duration:100,DurationOnUse:0f,Age:0,WaitTime:15,Potion:"minecraft:awkward",Effects:[{Id:2,Amplifier:1b,Duration:80}]}
execute if entity @s[tag=ca.overloading] align xyz positioned ~0.5 ~ ~0.5 run function cartographer_mob_abilities:death/hazard/create_overload_zone

execute if entity @s[tag=ca.venemous] align xyz positioned ~0.5 ~ ~0.5 run setblock ~1 ~0.1 ~ sweet_berry_bush[age=1] keep
execute if entity @s[tag=ca.venemous] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~0.1 ~1 sweet_berry_bush[age=1] keep
execute if entity @s[tag=ca.venemous] align xyz positioned ~0.5 ~ ~0.5 run setblock ~-1 ~0.1 ~ sweet_berry_bush[age=1] keep
execute if entity @s[tag=ca.venemous] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~0.1 ~-1 sweet_berry_bush[age=1] keep

execute if entity @s[tag=ca.cursing] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~0.1 ~-1 wither_rose keep
execute if entity @s[tag=ca.cursing] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~0.1 ~1 wither_rose keep
execute if entity @s[tag=ca.cursing] align xyz positioned ~0.5 ~ ~0.5 run setblock ~1 ~0.1 ~ wither_rose keep
execute if entity @s[tag=ca.cursing] align xyz positioned ~0.5 ~ ~0.5 run setblock ~-1 ~0.1 ~ wither_rose keep
execute if entity @s[tag=ca.cursing] align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~0.1 ~ wither_rose keep

execute if entity @s[tag=ca.zephyrous] align xyz positioned ~0.5 ~ ~0.5 run summon area_effect_cloud ~ ~0.3 ~ {Particle:"cloud",ReapplicationDelay:20,Radius:0.5f,RadiusPerTick:0.04f,RadiusOnUse:0f,Duration:100,DurationOnUse:0f,Age:0,WaitTime:15,Potion:"minecraft:awkward",Effects:[{Id:25,Amplifier:5b,Duration:40}]}

execute if entity @s[tag=ca.webbing] align xyz positioned ~0.5 ~ ~0.5 run function cartographer_mob_abilities:ability_traits/webbing/create

execute if entity @s[tag=ca.horrifying] align xyz positioned ~0.5 ~ ~0.5 run scoreboard players set @a[distance=..4.5] ca.horrified 160
execute if entity @s[tag=ca.horrifying] align xyz positioned ~0.5 ~ ~0.5 run function cartographer_mob_abilities:death/hazard/create_horror_zone


playsound minecraft:block.dispenser.dispense hostile @a[distance=..16] ~ ~ ~ 1 0.85
playsound minecraft:entity.shulker.ambient hostile @a[distance=..12] ~ ~ ~ 1 1.5

execute unless entity @s[type=creeper,tag=ca.deathbomb] run kill @s