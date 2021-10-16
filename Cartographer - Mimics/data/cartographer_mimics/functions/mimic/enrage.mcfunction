attribute @s minecraft:generic.attack_damage modifier add 18-1-7-5-1 "mimic_rage" 0.2 multiply_base
attribute @s minecraft:generic.knockback_resistance modifier add 18-1-7-5-1 "mimic_rage" 0.2 add

execute if entity @s[tag=double_mimic_skeleton] run item replace entity @s weapon.mainhand with minecraft:wooden_sword{Enchantments:[{id:"vanishing_curse",lvl:1s}]}
execute if entity @s[tag=double_mimic_skeleton] run tp @s ~ ~1 ~

tag @s remove ca.hookshot

tag @s add ca.charge
tag @s add ca.breaker
tag @s add enraged

execute if entity @s[tag=double_mimic_skeleton] run tag @s add ca.has_active

execute unless entity @s[tag=double_mimic_skeleton] run effect give @s speed 5 0
execute if entity @s[tag=double_mimic_skeleton] run effect give @s speed 5 1
execute if entity @s[tag=double_mimic_skeleton] if entity @e[type=magma_cube,tag=double_mimic_slime,distance=..3,sort=nearest,limit=1] run summon magma_cube ~ ~ ~ {Silent:1b,DeathLootTable:"no:lol",PersistenceRequired:1b,Health:30f,Size:2,Motion:[0.0,0.5,0.0],Tags:["ca.ability_dmg--","ca.has_active","ca.grenadier"],CustomName:'{"text":"Reduced Junk Slime","color":"red","bold":true,"italic":false}',ArmorItems:[{id:'minecraft:leather_boots',Count:1b,tag:{MimicDrop:1,DropData:{},display:{color:8541952},AttributeModifiers:[{AttributeName:'generic.armor',Name:'generic.armor',Amount:0,Operation:0,UUID:[I;1020468774,-2076229620,-1611852242,-1761935409]}]}},{id:'minecraft:leather_leggings',Count:1b,tag:{display:{color:8541952},AttributeModifiers:[{AttributeName:'generic.armor',Name:'generic.armor',Amount:0,Operation:0,UUID:[I;-601214512,2025931201,-1189033928,-834399059]}]}},{id:'minecraft:leather_chestplate',Count:1b,tag:{display:{color:8541952},AttributeModifiers:[{AttributeName:'generic.armor',Name:'generic.armor',Amount:0,Operation:0,UUID:[I;-846435225,-1244051764,-1920816362,445853774]}]}},{id:'minecraft:player_head',Count:1b,tag:{Enchantments:[{id:'minecraft:projectile_protection',lvl:6s}],AttributeModifiers:[{AttributeName:'generic.movement_speed',Name:'generic.movement_speed',Amount:-0.15,Operation:1,UUID:[I;1609484696,-2055321650,-1958683234,688618286],Slot:'head'}],SkullOwner:{Id:[I;-1556979608,787366593,-1246441793,318626814],Properties:{textures:[{Value:'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmIxN2M1YTk5ZTg1ODE4NDgyY2Q2YzBjNzFiN2VmOTRhY2VkYjZiOGUxZDg5NDRhZGY5MWU1MWU1MDg2NTY2ZiJ9fX0='}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.knockback_resistance,Base:0.2},{Name:generic.attack_damage,Base:7},{Name:generic.armor,Base:0},{Name:generic.attack_knockback,Base:3}]}
execute if entity @s[tag=double_mimic_skeleton] run kill @e[type=magma_cube,tag=double_mimic_slime,distance=..3,sort=nearest,limit=1]

scoreboard players set @s cooldown 0

particle minecraft:angry_villager ~ ~2 ~ 0.3 0.1 0.3 0 10 normal
particle minecraft:large_smoke ~ ~1 ~ 0.4 0.1 0.4 0.1 20 normal

playsound minecraft:entity.enderman.scream hostile @a[distance=..16] ~ ~ ~ 2 1.2
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 1 1.5
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 1 0.7
