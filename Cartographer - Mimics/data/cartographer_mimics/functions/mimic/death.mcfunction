playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 2 1.5
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 2 1
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 2 0.7
playsound minecraft:item.totem.use hostile @a[distance=..16] ~ ~ ~ 0.5 2

particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.2 0.2 0.4 40 normal

summon experience_orb ~ ~ ~ {Value:5,Motion:[0.0,0.2,0.0]}
summon experience_orb ~0.3 ~ ~ {Value:5,Motion:[0.1,0.1,0.0]}
summon experience_orb ~-0.3 ~ ~ {Value:5,Motion:[-0.1,0.1,0.0]}
summon experience_orb ~ ~ ~0.3 {Value:5,Motion:[0.0,0.1,0.1]}
summon experience_orb ~ ~ ~-0.3 {Value:5,Motion:[0.0,0.1,-0.1]}

execute as @e[tag=mimic_loot_tracker] at @s run clone ~ ~-1 ~ ~ ~-1 ~ ~ 255 ~

clone 4206905 255 4206905 4206905 255 4206905 ~ ~ ~

setblock ~ ~ ~ chest{CustomName:'{"text":"Mimic Carcass","color":"red"}'} destroy
execute as @e[type=item,distance=..3,limit=1,sort=nearest,nbt={Item:{tag:{MimicDrop:1}}}] run function cartographer_mimics:mimic/death_chest

execute as @e[tag=mimic_loot_tracker] at @s run fill ~ ~-1 ~ ~1 ~-1 ~ air replace
execute as @e[tag=mimic_loot_tracker] at @s run tp @s ~ ~-1 ~

kill @s