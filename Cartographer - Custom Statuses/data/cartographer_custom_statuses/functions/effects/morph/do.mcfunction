particle minecraft:cloud ~ ~1 ~ 0.3 0 0.3 0.1 10 normal
playsound minecraft:entity.chicken.hurt player @a[distance=..8] ~ ~ ~ 2 0.75
summon chicken ~ ~0.5 ~ {Glowing:1b,DeathLootTable:"cartographer_custom_enchantments:suspicious_chicken",Motion:[0.0,0.4,0.0],Tags:["ca.poultrygheist"],CustomName:'{"text":"Poultrygheist"}',ArmorItems:[{},{},{},{id:"minecraft:egg",Count:1b,tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1024}]}

scoreboard players operation $morph_value ca.status_var = @s ca.effect_morph

function cartographer_custom_statuses:effects/morph/mob_save

execute as @e[type=chicken,tag=ca.poultrygheist,tag=!ca.checked,limit=1,sort=nearest] at @s run function cartographer_custom_statuses:effects/morph/chicken_setup

scoreboard players set $morph_success ca.status_var 1

execute as @e[type=#bb:hostile,distance=..15] at @s run scoreboard players operation @s ca.morph_immune = $morph_value ca.status_var

#function #minecraft:cartographer/events/enchants_mob_hit/melee/transfiguration/proc