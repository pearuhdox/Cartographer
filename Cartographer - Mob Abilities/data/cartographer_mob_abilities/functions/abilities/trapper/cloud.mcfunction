execute if score @s ca.ability_dmg matches 0..4 run summon area_effect_cloud ~ ~0.1 ~ {Particle:"crit",NoGravity:1b,Radius:1.75f,RadiusPerTick:0f,RadiusOnUse:-2f,Duration:160,DurationOnUse:0f,Age:0,WaitTime:10,Tags:["trap_deployed"],Effects:[{Id:2b,Amplifier:1b,Duration:60},{Id:7b,Amplifier:1b,Duration:1}],CustomName:'{"text":"enchanted caltrops"}'}
execute if score @s ca.ability_dmg matches 5..8 run summon area_effect_cloud ~ ~0.1 ~ {Particle:"crit",NoGravity:1b,Radius:1.75f,RadiusPerTick:0f,RadiusOnUse:-2f,Duration:160,DurationOnUse:0f,Age:0,WaitTime:10,Tags:["trap_deployed"],Effects:[{Id:2b,Amplifier:2b,Duration:60},{Id:7b,Amplifier:1b,Duration:1}],CustomName:'{"text":"enchanted caltrops"}'}
execute if score @s ca.ability_dmg matches 9..12 run summon area_effect_cloud ~ ~0.1 ~ {Particle:"crit",NoGravity:1b,Radius:1.75f,RadiusPerTick:0f,RadiusOnUse:-2f,Duration:160,DurationOnUse:0f,Age:0,WaitTime:10,Tags:["trap_deployed"],Effects:[{Id:2b,Amplifier:3b,Duration:60},{Id:7b,Amplifier:1b,Duration:1}],CustomName:'{"text":"enchanted caltrops"}'}
execute if score @s ca.ability_dmg matches 13..16 run summon area_effect_cloud ~ ~0.1 ~ {Particle:"crit",NoGravity:1b,Radius:1.75f,RadiusPerTick:0f,RadiusOnUse:-2f,Duration:160,DurationOnUse:0f,Age:0,WaitTime:10,Tags:["trap_deployed"],Effects:[{Id:2b,Amplifier:4b,Duration:60},{Id:7b,Amplifier:1b,Duration:1}],CustomName:'{"text":"enchanted caltrops"}'}
execute if score @s ca.ability_dmg matches 17.. run summon area_effect_cloud ~ ~0.1 ~ {Particle:"crit",NoGravity:1b,Radius:1.75f,RadiusPerTick:0f,RadiusOnUse:-2f,Duration:160,DurationOnUse:0f,Age:0,WaitTime:10,Tags:["trap_deployed"],Effects:[{Id:2b,Amplifier:5b,Duration:60},{Id:7b,Amplifier:1b,Duration:1}],CustomName:'{"text":"enchanted caltrops"}'}