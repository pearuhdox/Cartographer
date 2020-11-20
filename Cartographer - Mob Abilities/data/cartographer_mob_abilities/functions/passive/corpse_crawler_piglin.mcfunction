summon zombified_piglin ~0.2 ~0.3 ~0.2 {Health:15f,IsBaby:1,AngerTime:32767,Attributes:[{Name:generic.max_health,Base:15},{Name:generic.attack_damage,Base:3}]}

summon zombified_piglin ~-0.2 ~0.3 ~-0.2 {Health:15f,IsBaby:1,AngerTime:32767,Attributes:[{Name:generic.max_health,Base:15},{Name:generic.attack_damage,Base:3}]}

summon zombified_piglin ~ ~0.3 ~ {Health:15f,IsBaby:1,AngerTime:32767,Attributes:[{Name:generic.max_health,Base:15},{Name:generic.attack_damage,Base:3}]}

playsound minecraft:entity.zombie.infect hostile @a[distance=..16] ~ ~ ~ 5 0.5

kill @s