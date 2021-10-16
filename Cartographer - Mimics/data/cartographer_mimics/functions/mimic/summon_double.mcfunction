data modify storage cartographer:mimics DropData set from entity @s ArmorItems[0].tag.DropData
data modify storage cartographer:mimics DropTable set from entity @s ArmorItems[0].tag.DropTable

data modify storage cartographer:mimics DropData2 set from entity @s ArmorItems[0].tag.DropData2
data modify storage cartographer:mimics DropTable2 set from entity @s ArmorItems[0].tag.DropTable2

summon magma_cube ~-0.5 ~-0.3 ~-0.5 {Silent:1b,DeathLootTable:"cartographer_mimics:mimic",PersistenceRequired:1b,Health:60f,Size:3,Motion:[0.0,0.5,0.0],Tags:["ca.ability_dmg--","ca.has_active","ca.grenadier","active_mimic","double_mimic_slime"],Passengers:[{id:"minecraft:wither_skeleton",Silent:1b,DeathLootTable:"cartographer_mimics:mimic",PersistenceRequired:1b,Health:120f,Tags:["ca.ability_dmg--","ca.shoot_wither_skull","ca.hookshot","active_mimic","double_mimic_skeleton"],CustomName:'{"text":"Mimic","color":"red","bold":true,"italic":false}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}},{}],ArmorItems:[{id:'minecraft:leather_boots',Count:1b,tag:{MimicDrop:1,DropData:{},display:{color:8541952},AttributeModifiers:[{AttributeName:'generic.armor',Name:'generic.armor',Amount:0,Operation:0,UUID:[I;1817771959,355550772,-1974843892,-485801290]}]}},{id:'minecraft:leather_leggings',Count:1b,tag:{display:{color:8541952},AttributeModifiers:[{AttributeName:'generic.armor',Name:'generic.armor',Amount:0,Operation:0,UUID:[I;-109088189,501827563,-1283384756,-385003708]}]}},{id:'minecraft:leather_chestplate',Count:1b,tag:{display:{color:8541952},AttributeModifiers:[{AttributeName:'generic.armor',Name:'generic.armor',Amount:0,Operation:0,UUID:[I;-254691922,761613416,-2033578184,-317184850]}]}},{id:'minecraft:player_head',Count:1b,tag:{AttributeModifiers:[{AttributeName:'generic.movement_speed',Name:'generic.movement_speed',Amount:-0.15,Operation:1,UUID:[I;-1051151851,-343850474,-1571545752,1946759158],Slot:'head'}],SkullOwner:{Id:[I;-1556979608,787366593,-1246441793,318626814],Properties:{textures:[{Value:'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmIxN2M1YTk5ZTg1ODE4NDgyY2Q2YzBjNzFiN2VmOTRhY2VkYjZiOGUxZDg5NDRhZGY5MWU1MWU1MDg2NTY2ZiJ9fX0='}]}}}}],ArmorDropChances:[2.000F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:120},{Name:generic.knockback_resistance,Base:0.2},{Name:generic.attack_damage,Base:10},{Name:generic.armor,Base:0},{Name:generic.attack_knockback,Base:3}]}],CustomName:'{"text":"Junk Slime","color":"red","bold":true,"italic":false}',ArmorItems:[{id:'minecraft:leather_boots',Count:1b,tag:{MimicDrop:1,DropData:{},display:{color:8541952},AttributeModifiers:[{AttributeName:'generic.armor',Name:'generic.armor',Amount:0,Operation:0,UUID:[I;1020468774,-2076229620,-1611852242,-1761935409]}]}},{id:'minecraft:leather_leggings',Count:1b,tag:{display:{color:8541952},AttributeModifiers:[{AttributeName:'generic.armor',Name:'generic.armor',Amount:0,Operation:0,UUID:[I;-601214512,2025931201,-1189033928,-834399059]}]}},{id:'minecraft:leather_chestplate',Count:1b,tag:{display:{color:8541952},AttributeModifiers:[{AttributeName:'generic.armor',Name:'generic.armor',Amount:0,Operation:0,UUID:[I;-846435225,-1244051764,-1920816362,445853774]}]}},{id:'minecraft:player_head',Count:1b,tag:{AttributeModifiers:[{AttributeName:'generic.movement_speed',Name:'generic.movement_speed',Amount:-0.15,Operation:1,UUID:[I;1609484696,-2055321650,-1958683234,688618286],Slot:'head'}],SkullOwner:{Id:[I;-1556979608,787366593,-1246441793,318626814],Properties:{textures:[{Value:'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmIxN2M1YTk5ZTg1ODE4NDgyY2Q2YzBjNzFiN2VmOTRhY2VkYjZiOGUxZDg5NDRhZGY5MWU1MWU1MDg2NTY2ZiJ9fX0='}]}}}}],ArmorDropChances:[2.000F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:60},{Name:generic.knockback_resistance,Base:0.2},{Name:generic.attack_damage,Base:10},{Name:generic.armor,Base:0},{Name:generic.attack_knockback,Base:3}]}

data modify entity @e[type=wither_skeleton,tag=active_mimic,sort=nearest,limit=1] ArmorItems[0].tag.DropData set value {}
data modify entity @e[type=wither_skeleton,tag=active_mimic,sort=nearest,limit=1] ArmorItems[0].tag.DropData set from storage cartographer:mimics DropData

data modify entity @e[type=wither_skeleton,tag=active_mimic,sort=nearest,limit=1] ArmorItems[0].tag.DropTable set value ""
data modify entity @e[type=wither_skeleton,tag=active_mimic,sort=nearest,limit=1] ArmorItems[0].tag.DropTable set from storage cartographer:mimics DropTable

data modify entity @e[type=magma_cube,tag=active_mimic,sort=nearest,limit=1] ArmorItems[0].tag.DropData set value {}
data modify entity @e[type=magma_cube,tag=active_mimic,sort=nearest,limit=1] ArmorItems[0].tag.DropData set from storage cartographer:mimics DropData2

data modify entity @e[type=magma_cube,tag=active_mimic,sort=nearest,limit=1] ArmorItems[0].tag.DropTable set value ""
data modify entity @e[type=magma_cube,tag=active_mimic,sort=nearest,limit=1] ArmorItems[0].tag.DropTable set from storage cartographer:mimics DropTable2

setblock ~ ~ ~ air replace
execute if block ~-1 ~ ~ trapped_chest run setblock ~-1 ~ ~ air replace
execute if block ~ ~ ~-1 trapped_chest run setblock ~ ~ ~-1 air replace

kill @e[type=item,distance=..0.75]
execute positioned ~-1 ~ ~ run kill @e[type=item,distance=..0.75]
execute positioned ~ ~ ~-1 run kill @e[type=item,distance=..0.75]

playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 2 0.7

particle minecraft:angry_villager ~ ~1.5 ~ 0.3 0.1 0.3 0 10 normal
particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.1 0.4 0.1 20 normal

execute as @e[tag=active_mimic,limit=2,sort=nearest] at @s run function cartographer_mimics:mimic/scale

execute if score $mimic_tripped setup matches 1.. as @p at @s run summon minecraft:evoker_fangs ~ ~ ~
execute if score $mimic_tripped setup matches 1.. as @p at @s run effect give @s hunger 3 69 true
execute if score $mimic_tripped setup matches 1.. as @p at @s run effect give @s slowness 1 3 true
execute if score $mimic_tripped setup matches 1.. as @p at @s run tp @s ~ ~ ~ facing entity @e[tag=active_mimic,limit=1,sort=nearest] feet

kill @s