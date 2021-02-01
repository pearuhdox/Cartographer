execute if entity @s[nbt={ActiveEffects:[{Id:30b,Amplifier:10b}]}] run summon firework_rocket ~ ~1 ~ {Tags:["volatile_firework"],ShotAtAngle:1,LifeTime:7,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Colors:[I;16763940]}]}}}}
execute if entity @s[nbt={ActiveEffects:[{Id:30b,Amplifier:11b}]}] run summon firework_rocket ~ ~1 ~ {Tags:["volatile_firework"],ShotAtAngle:1,LifeTime:7,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Colors:[I;16763940]},{Type:4,Colors:[I;16763940]}]}}}}
execute if entity @s[nbt={ActiveEffects:[{Id:30b,Amplifier:12b}]}] run summon firework_rocket ~ ~1 ~ {Tags:["volatile_firework"],ShotAtAngle:1,LifeTime:7,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Colors:[I;16763940]},{Type:4,Colors:[I;16763940]},{Type:1,Colors:[I;16763940]}]}}}}
effect give @s slowness 1 6 true

effect clear @s dolphins_grace