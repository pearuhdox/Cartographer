summon wither_skeleton ~ ~-0.4 ~ {PersistenceRequired:1b,Silent:1b,DeathLootTable:"cartographer_mimics:mimic",Health:120f,Motion:[0.0,0.5,0.0],Tags:["has_active","hookshot","active_mimic"],CustomName:'{"text":"Mimic","color":"red","bold":true,"italic":false}',ArmorItems:[{id:'minecraft:leather_boots',Count:1b,tag:{display:{color:8541952},AttributeModifiers:[{AttributeName:'generic.armor',Name:'generic.armor',Amount:0,Operation:0,UUID:[I;946340443,902645760,-1103412576,1921674995]}]}},{id:'minecraft:leather_leggings',Count:1b,tag:{display:{color:8541952},AttributeModifiers:[{AttributeName:'generic.armor',Name:'generic.armor',Amount:0,Operation:0,UUID:[I;-1444188700,1049053606,-1220262894,1385442491]}]}},{id:'minecraft:leather_chestplate',Count:1b,tag:{display:{color:8541952},AttributeModifiers:[{AttributeName:'generic.armor',Name:'generic.armor',Amount:0,Operation:0,UUID:[I;-2029217045,-327921966,-1907711099,-1456207852]}]}},{id:'minecraft:player_head',Count:1b,tag:{Enchantments:[{id:'minecraft:projectile_protection',lvl:8s}],AttributeModifiers:[{AttributeName:'generic.movement_speed',Name:'generic.movement_speed',Amount:-0.15,Operation:1,UUID:[I;-32675940,1117078320,-1474902070,1007201142],Slot:'head'}],SkullOwner:{Id:[I;-1556979608,787366593,-1246441793,318626814],Properties:{textures:[{Value:'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmIxN2M1YTk5ZTg1ODE4NDgyY2Q2YzBjNzFiN2VmOTRhY2VkYjZiOGUxZDg5NDRhZGY5MWU1MWU1MDg2NTY2ZiJ9fX0='}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:120},{Name:generic.knockback_resistance,Base:0.2},{Name:generic.attack_damage,Base:10},{Name:generic.armor,Base:0},{Name:generic.attack_knockback,Base:3}]}

setblock ~ ~ ~ air destroy
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:trapped_chest",Count:1b}}]

execute as @e[tag=mimic_loot_tracker] at @s run setblock ~ ~ ~ barrel
execute as @e[tag=mimic_loot_tracker] at @s run setblock ~1 ~ ~ hopper[facing=west]
execute as @e[type=item,distance=..2] at @s run data merge entity @s {Motion:[0.0,0.0,0.0]} 
execute as @e[type=item,distance=..2] at @s run execute positioned as @e[tag=mimic_loot_tracker] run tp @s ~1 ~1 ~

execute as @e[tag=mimic_loot_tracker] at @s run tp @s ~ ~1 ~

playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 2 0.7

particle minecraft:angry_villager ~ ~1.5 ~ 0.3 0.1 0.3 0 10 normal
particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.1 0.4 0.1 20 normal

execute as @e[tag=active_mimic,limit=1,sort=nearest] at @s run function cartographer_mimics:mimic/scale


execute as @p at @s run summon minecraft:evoker_fangs ~ ~ ~

execute as @p at @s run effect give @s hunger 3 69 true

execute as @p at @s run effect give @s slowness 1 3 true

execute as @p at @s run tp @s ~ ~ ~ facing entity @e[tag=active_mimic,limit=1,sort=nearest] feet

kill @s