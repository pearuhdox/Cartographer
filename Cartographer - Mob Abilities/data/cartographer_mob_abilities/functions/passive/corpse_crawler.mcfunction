summon zombie ~0.2 ~0.3 ~0.2 {Health:15f,IsBaby:1b,CustomName:'{"text":"Corpse Crawler"}',Attributes:[{Name:generic.maxHealth,Base:15},{Name:generic.movementSpeed,Base:0.2}]}

summon zombie ~-0.2 ~0.3 ~-0.2 {Health:15f,IsBaby:1b,CustomName:'{"text":"Corpse Crawler"}',Attributes:[{Name:generic.maxHealth,Base:15},{Name:generic.movementSpeed,Base:0.2}]}

summon zombie ~ ~0.3 ~ {Health:15f,IsBaby:1b,CustomName:'{"text":"Corpse Crawler"}',Attributes:[{Name:generic.maxHealth,Base:15},{Name:generic.movementSpeed,Base:0.2}]}

playsound minecraft:entity.zombie.infect hostile @a[distance=..16] ~ ~ ~ 5 0.5

kill @s