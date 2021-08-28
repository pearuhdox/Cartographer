execute at @p run summon area_effect_cloud ~ ~1 ~ {Particle:"block air",Radius:1.0f,RadiusPerTick:0f,RadiusOnUse:-10f,Duration:20,DurationOnUse:100f,Age:1,WaitTime:0,Tags:["custom_shulker_inflict"],Potion:"minecraft:mundane",Effects:[{Id:1b,Amplifier:0b,Duration:1}]}

scoreboard players set $csb_data ca.cs_id 0
scoreboard players set $csb_data ca.cs_dur 0
scoreboard players set $csb_data ca.cs_pot 0

scoreboard players operation $csb_data ca.cs_id = @s ca.cs_id
scoreboard players operation $csb_data ca.cs_dur = @s ca.cs_dur
scoreboard players operation $csb_data ca.cs_pot = @s ca.cs_pot

execute as @e[tag=custom_shulker_inflict,sort=nearest,limit=1] at @s run function cartographer_mob_abilities:passive/projectile/set_effects