playsound minecraft:entity.shulker_bullet.hurt hostile @a[distance=..16] ~ ~ ~ 2 0.75
playsound minecraft:entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 1 2

summon area_effect_cloud ~ ~0.75 ~ {Radius:1.5f,RadiusPerTick:0f,RadiusOnUse:-5f,Duration:20,DurationOnUse:0,Age:0,WaitTime:0,Color:14284287,Tags:["helper_cloud"],Potion:"minecraft:awkward",Effects:[{Id:25b,Amplifier:39b,Duration:5},{Id:28b,Amplifier:0b,Duration:20}]}