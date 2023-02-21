particle minecraft:cloud ~ ~1 ~ 0.3 0 0.3 0.1 10 normal
playsound minecraft:entity.chicken.hurt player @a[distance=..8] ~ ~ ~ 2 0.75
summon chicken ~ ~0.5 ~ {Glowing:1b,DeathLootTable:"cartographer_custom_enchantments:suspicious_chicken",Motion:[0.0,0.4,0.0],Tags:["ca.poultrygheist"],CustomName:'{"text":"Poultrygheist"}',ActiveEffects:[{Id:14,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1024}]}

function cartographer_custom_enchantments:enchant_effects/transfiguration/mob_save

execute as @e[type=chicken,tag=ca.poultrygheist,tag=!ca.checked,limit=1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/transfiguration/chicken_setup

scoreboard players set $transfig_success ca.transfig 1

function #minecraft:cartographer/events/enchants_mob_hit/melee/transfiguration/proc