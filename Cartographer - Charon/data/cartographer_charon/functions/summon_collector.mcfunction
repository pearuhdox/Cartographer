summon wither_skeleton ~ ~ ~ {CustomNameVisible:1b,DeathLootTable:"no_lol",PersistenceRequired:1b,CanPickUpLoot:0b,Health:1f,Tags:["ca.prevent_effects","ca.collector","ca.ambidextrous","ca.shoot_custom_projectile","ca.shoot_wither_skull"],CustomName:'{"text":"Collector","color":"#6135F2","bold":true,"italic":false}',HandItems:[{id:"minecraft:iron_hoe",Count:1b,tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;127049666,1470581429,-1744122654,-545300123],Slot:"mainhand"}]}},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{id:"minecraft:bundle",Count:1b,tag:{Items:[{id:"minecraft:dirt",Count:1b}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1578529},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}},{id:"minecraft:player_head",Count:1b,tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],SkullOwner:{Id:[I;-52030109,1132086756,-2121056557,601455534],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDE0MTlkOGM5ZGVjNDM5Zjc5MzYzN2U2MTA2Y2Q4YmRlMWVkYTk4YWJmMzdjMWRlM2M3MjJiNTYyZWYxYyJ9fX0="}]}}}}],ArmorDropChances:[0.085F,1.000F,-327.670F,-327.670F],ActiveEffects:[{Id:10,Amplifier:5b,Duration:100},{Id:14,Amplifier:0b,Duration:20000000,ShowParticles:0b},{Id:22,Amplifier:1b,Duration:100},{Id:28,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.knockback_resistance,Base:0.15},{Name:generic.attack_damage,Base:0},{Name:generic.armor,Base:-6},{Name:generic.armor_toughness,Base:0},{Name:generic.attack_knockback,Base:2}]}

scoreboard players add $collector_count dt.var 1