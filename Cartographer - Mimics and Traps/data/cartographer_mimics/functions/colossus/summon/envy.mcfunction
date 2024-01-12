summon skeleton ~ ~ ~ {Silent:1b,DeathLootTable:"cartographer_mimics:colossus",PersistenceRequired:1b,Health:120f,Motion:[0.0,0.5,0.0],Tags:["colossus_envy","active_colossus","ca.has_active","ca.nova","ca.warping","ca.accelerate++","ca.horrifying","ca.sh_custom","ca.sh_grenade","ca.touch"],CustomName:'{"text":"Colossus of Envy","color":"red","bold":true,"italic":false}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{ColossusDeath:1,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-1314443367,953107972,-1375458680,906672816]}]}},{}],HandDropChances:[2.000F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1841175},AttributeModifiers:[{AttributeName:"generic.follow_range",Name:"generic.follow_range",Amount:1,Operation:0,UUID:[I;-1735758227,-1789704904,-1989849679,-985126273],Slot:"feet"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.25,Operation:0,UUID:[I;1730267689,-1888532559,-1684384042,690217279],Slot:"feet"}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2169884},AttributeModifiers:[{AttributeName:"generic.follow_range",Name:"generic.follow_range",Amount:1,Operation:0,UUID:[I;-772186480,-966900781,-1863102829,-238341203],Slot:"legs"}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3024935},AttributeModifiers:[{AttributeName:"generic.follow_range",Name:"generic.follow_range",Amount:1,Operation:0,UUID:[I;-1363612549,-550288771,-1760079112,-1466264715],Slot:"chest"}]}},{id:"minecraft:player_head",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:5s},{id:"minecraft:vanishing_curse",lvl:1s}],SkullOwner:{Id:[I;1561635557,1165116808,-1229276032,878018488],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGViMDdlZWEzODBhZjU4ZGM5MWVlZWUxNWQ5NWQ4NzkwYTA3ODFjNjk1ZWMwYThmZDhmZTMxZDQ4MzljYTU2MiJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:120},{Name:generic.attack_damage,Base:1},{Name:generic.armor,Base:0},{Name:generic.attack_knockback,Base:1}]}

playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 2 0.7

particle minecraft:campfire_signal_smoke ~ ~1.5 ~ 0.3 0.1 0.3 0.075 10 normal
particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.1 0.4 0.1 20 normal

scoreboard players set $health_total ca.trap_tier 120
execute as @e[tag=active_colossus,limit=1,sort=nearest] at @s run function cartographer_mimics:colossus/scale

kill @s