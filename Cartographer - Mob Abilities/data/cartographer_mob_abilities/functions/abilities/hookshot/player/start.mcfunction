tp @s ~ ~0.1 ~

summon slime ~ ~0.5 ~ {NoGravity:1b,wasOnGround:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Size:1,Tags:["hooked_push_back","hook_pusher"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}
summon slime ~ ~0.5 ~ {NoGravity:1b,wasOnGround:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Size:1,Tags:["hooked_push_back","hook_pusher"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}
#summon slime ~ ~0.5 ~ {NoGravity:1b,wasOnGround:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Size:1,Tags:["hooked_push_back","hook_pusher"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}

summon slime ~ ~0.5 ~ {NoGravity:1b,wasOnGround:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Size:0,Tags:["hooked_push_left","hook_pusher"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}
summon slime ~ ~0.5 ~ {NoGravity:1b,wasOnGround:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Size:0,Tags:["hooked_push_left","hook_pusher"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}
summon slime ~ ~0.5 ~ {NoGravity:1b,wasOnGround:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Size:0,Tags:["hooked_push_left","hook_pusher"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}

summon slime ~ ~0.5 ~ {NoGravity:1b,wasOnGround:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Size:0,Tags:["hooked_push_right","hook_pusher"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}
summon slime ~ ~0.5 ~ {NoGravity:1b,wasOnGround:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Size:0,Tags:["hooked_push_right","hook_pusher"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}
summon slime ~ ~0.5 ~ {NoGravity:1b,wasOnGround:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Size:0,Tags:["hooked_push_right","hook_pusher"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}

attribute @s minecraft:generic.movement_speed modifier add 31-815-1511-54-01 "hooked_spd_stop" -1 multiply
attribute @s minecraft:generic.movement_speed modifier add 31-815-1511-54-0 "hooked_spd_red" -0.5 multiply

particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force