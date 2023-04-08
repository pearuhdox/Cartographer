execute unless data entity @s HandItems[0].id run data modify entity @s HandItems[0] set value {id:"minecraft:wooden_sword",Count:1b}

execute if entity @s[type=creeper] run data modify entity @s HandItems[0] set value {id:"minecraft:gunpowder",Count:1b}
execute if entity @s[type=blaze] run data modify entity @s HandItems[0] set value {id:"minecraft:blaze_rod",Count:1b}

data modify entity @s HandItems[0].tag.EntityData set value {}
data modify entity @s HandItems[0].tag.EntityData set from entity @s {}

execute if entity @s[type=creeper] store result entity @s HandItems[0].tag.EntityData.Fuse int 1 run scoreboard players add @s ca.delta_fuse_max 0
execute if entity @s[type=creeper,tag=!ca.delta_creeper_silent] run data remove entity @s HandItems[0].tag.EntityData.Silent

data modify entity @s HandItems[0].tag.ExaltedDrop set value 1

#Set the proper entity type
execute if entity @s[type=zombie] run data modify entity @s HandItems[0].tag.EntityType set value 1
execute if entity @s[type=husk] run data modify entity @s HandItems[0].tag.EntityType set value 2
execute if entity @s[type=drowned] run data modify entity @s HandItems[0].tag.EntityType set value 3
execute if entity @s[type=skeleton] run data modify entity @s HandItems[0].tag.EntityType set value 4
execute if entity @s[type=stray] run data modify entity @s HandItems[0].tag.EntityType set value 5
execute if entity @s[type=wither_skeleton] run data modify entity @s HandItems[0].tag.EntityType set value 6
execute if entity @s[type=zombified_piglin] run data modify entity @s HandItems[0].tag.EntityType set value 7
execute if entity @s[type=phantom] run data modify entity @s HandItems[0].tag.EntityType set value 8
execute if entity @s[type=spider] run data modify entity @s HandItems[0].tag.EntityType set value 9
execute if entity @s[type=cave_spider] run data modify entity @s HandItems[0].tag.EntityType set value 10
execute if entity @s[type=silverfish] run data modify entity @s HandItems[0].tag.EntityType set value 11
execute if entity @s[type=endermite] run data modify entity @s HandItems[0].tag.EntityType set value 12
execute if entity @s[type=creeper] run data modify entity @s HandItems[0].tag.EntityType set value 13
execute if entity @s[type=enderman] run data modify entity @s HandItems[0].tag.EntityType set value 14
execute if entity @s[type=blaze] run data modify entity @s HandItems[0].tag.EntityType set value 15
execute if entity @s[type=slime] run data modify entity @s HandItems[0].tag.EntityType set value 16
execute if entity @s[type=magma_cube] run data modify entity @s HandItems[0].tag.EntityType set value 17
execute if entity @s[type=ghast] run data modify entity @s HandItems[0].tag.EntityType set value 18
execute if entity @s[type=vindicator] run data modify entity @s HandItems[0].tag.EntityType set value 19
execute if entity @s[type=evoker] run data modify entity @s HandItems[0].tag.EntityType set value 20
execute if entity @s[type=pillager] run data modify entity @s HandItems[0].tag.EntityType set value 21
execute if entity @s[type=vex] run data modify entity @s HandItems[0].tag.EntityType set value 22
execute if entity @s[type=ravager] run data modify entity @s HandItems[0].tag.EntityType set value 23
execute if entity @s[type=guardian] run data modify entity @s HandItems[0].tag.EntityType set value 24
execute if entity @s[type=elder_guardian] run data modify entity @s HandItems[0].tag.EntityType set value 25
execute if entity @s[type=shulker] run data modify entity @s HandItems[0].tag.EntityType set value 26
execute if entity @s[type=zombie_villager] run data modify entity @s HandItems[0].tag.EntityType set value 27
execute if entity @s[type=bee] run data modify entity @s HandItems[0].tag.EntityType set value 28
execute if entity @s[type=piglin] run data modify entity @s HandItems[0].tag.EntityType set value 29
execute if entity @s[type=piglin_brute] run data modify entity @s HandItems[0].tag.EntityType set value 30
execute if entity @s[type=hoglin] run data modify entity @s HandItems[0].tag.EntityType set value 31
execute if entity @s[type=zoglin] run data modify entity @s HandItems[0].tag.EntityType set value 32
execute if entity @s[type=illusioner] run data modify entity @s HandItems[0].tag.EntityType set value 33
execute if entity @s[type=wolf] run data modify entity @s HandItems[0].tag.EntityType set value 34
execute if entity @s[type=rabbit] run data modify entity @s HandItems[0].tag.EntityType set value 35
execute if entity @s[type=iron_golem] run data modify entity @s HandItems[0].tag.EntityType set value 36

tag @s add setup