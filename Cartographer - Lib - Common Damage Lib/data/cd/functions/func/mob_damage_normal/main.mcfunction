scoreboard players add $Used_Golem_Count_Mob cdl.Damage_Queue 1
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 11 run scoreboard players set $Used_Golem_Count_Mob cdl.Damage_Queue 1
tag @s add cdl.Damaging_Mob

execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 1 as 1c8f4ecf-050d-439c-bf7f-266e40903c5c store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @e[tag=cdl.Damaging_Mob,limit=1,sort=nearest,distance=..2] cdl.Damage_Queue 10
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 2 as 1c8f4ed0-050d-439c-bf7f-266e40903c5c store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @e[tag=cdl.Damaging_Mob,limit=1,sort=nearest,distance=..2] cdl.Damage_Queue 10
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 3 as 1c8f4ed1-050d-439c-bf7f-266e40903c5c store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @e[tag=cdl.Damaging_Mob,limit=1,sort=nearest,distance=..2] cdl.Damage_Queue 10
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 4 as 1c8f4ed2-050d-439c-bf7f-266e40903c5c store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @e[tag=cdl.Damaging_Mob,limit=1,sort=nearest,distance=..2] cdl.Damage_Queue 10
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 5 as 1c8f4ed3-050d-439c-bf7f-266e40903c5c store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @e[tag=cdl.Damaging_Mob,limit=1,sort=nearest,distance=..2] cdl.Damage_Queue 10
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 6 as 1c8f4ed4-050d-439c-bf7f-266e40903c5c store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @e[tag=cdl.Damaging_Mob,limit=1,sort=nearest,distance=..2] cdl.Damage_Queue 10
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 7 as 1c8f4ed5-050d-439c-bf7f-266e40903c5c store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @e[tag=cdl.Damaging_Mob,limit=1,sort=nearest,distance=..2] cdl.Damage_Queue 10
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 8 as 1c8f4ed6-050d-439c-bf7f-266e40903c5c store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @e[tag=cdl.Damaging_Mob,limit=1,sort=nearest,distance=..2] cdl.Damage_Queue 10
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 9 as 1c8f4ed7-050d-439c-bf7f-266e40903c5c store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @e[tag=cdl.Damaging_Mob,limit=1,sort=nearest,distance=..2] cdl.Damage_Queue 10
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 10 as 1c8f4ece-050d-439c-bf7f-266e40903c5c store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @e[tag=cdl.Damaging_Mob,limit=1,sort=nearest,distance=..2] cdl.Damage_Queue 10

scoreboard players reset @s cdl.Damage_Queue
attribute @s minecraft:generic.knockback_resistance modifier add 31514192-0114-2651-8151-950000000005 cdl.Custom_Damage_KBR 10 add

execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 1 as 1c8f4ecf-050d-439c-bf7f-266e40903c5c at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;-217470501,1668763292,-1954101904,-965749149],damage:10d,Motion:[0b,-10b,0b]}
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 2 as 1c8f4ed0-050d-439c-bf7f-266e40903c5c at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;-217470502,1668763292,-1954101904,-965749149],damage:10d,Motion:[0b,-10b,0b]}
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 3 as 1c8f4ed1-050d-439c-bf7f-266e40903c5c at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;-217470503,1668763292,-1954101904,-965749149],damage:10d,Motion:[0b,-10b,0b]}
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 4 as 1c8f4ed2-050d-439c-bf7f-266e40903c5c at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;-217470504,1668763292,-1954101904,-965749149],damage:10d,Motion:[0b,-10b,0b]}
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 5 as 1c8f4ed3-050d-439c-bf7f-266e40903c5c at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;-217470505,1668763292,-1954101904,-965749149],damage:10d,Motion:[0b,-10b,0b]}
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 6 as 1c8f4ed4-050d-439c-bf7f-266e40903c5c at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;-217470506,1668763292,-1954101904,-965749149],damage:10d,Motion:[0b,-10b,0b]}
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 7 as 1c8f4ed5-050d-439c-bf7f-266e40903c5c at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;-217470507,1668763292,-1954101904,-965749149],damage:10d,Motion:[0b,-10b,0b]}
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 8 as 1c8f4ed6-050d-439c-bf7f-266e40903c5c at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;-217470508,1668763292,-1954101904,-965749149],damage:10d,Motion:[0b,-10b,0b]}
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 9 as 1c8f4ed7-050d-439c-bf7f-266e40903c5c at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;-217470509,1668763292,-1954101904,-965749149],damage:10d,Motion:[0b,-10b,0b]}
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 10 as 1c8f4ece-050d-439c-bf7f-266e40903c5c at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;-217470500,1668763292,-1954101904,-965749149],damage:10d,Motion:[0b,-10b,0b]}

execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 1 run data modify entity f309a9db-6377-4e9c-8b86-c570c66fd663 Owner set from entity @s UUID
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 2 run data modify entity f309a9da-6377-4e9c-8b86-c570c66fd663 Owner set from entity @s UUID
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 3 run data modify entity f309a9d9-6377-4e9c-8b86-c570c66fd663 Owner set from entity @s UUID
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 4 run data modify entity f309a9d8-6377-4e9c-8b86-c570c66fd663 Owner set from entity @s UUID
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 5 run data modify entity f309a9d7-6377-4e9c-8b86-c570c66fd663 Owner set from entity @s UUID
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 6 run data modify entity f309a9d6-6377-4e9c-8b86-c570c66fd663 Owner set from entity @s UUID
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 7 run data modify entity f309a9d5-6377-4e9c-8b86-c570c66fd663 Owner set from entity @s UUID
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 8 run data modify entity f309a9d4-6377-4e9c-8b86-c570c66fd663 Owner set from entity @s UUID
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 9 run data modify entity f309a9d3-6377-4e9c-8b86-c570c66fd663 Owner set from entity @s UUID
execute if score $Used_Golem_Count_Mob cdl.Damage_Queue matches 10 run data modify entity f309a9dc-6377-4e9c-8b86-c570c66fd663 Owner set from entity @s UUID

function cd:func/mob_damage_normal/loop