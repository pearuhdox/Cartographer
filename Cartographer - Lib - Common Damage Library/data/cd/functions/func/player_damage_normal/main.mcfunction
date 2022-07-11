# Datapack  : CDL
# Author(s) : RockNRed, PearUhDox
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Main
# Use       : Ran to deal normal damage to the player.

execute if score @s cdl.death matches 1.. run scoreboard players set @s cdl.death 0
execute store result score $gamerule.death_messages cdl.temp run gamerule showDeathMessages
execute if score $gamerule.death_messages cdl.temp matches 1 run gamerule showDeathMessages false


scoreboard players add $used_golem_count cdl.damage_queue 1
execute if score $used_golem_count cdl.damage_queue matches 11 run scoreboard players set $used_golem_count cdl.damage_queue 1

execute if score $used_golem_count cdl.damage_queue matches 1 as f8d7f043-fc82-4df6-acb2-d1f9cc707516 store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p cdl.damage_queue 10
execute if score $used_golem_count cdl.damage_queue matches 2 as f8d7f042-fc82-4df6-acb2-d1f9cc707516 store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p cdl.damage_queue 10
execute if score $used_golem_count cdl.damage_queue matches 3 as f8d7f041-fc82-4df6-acb2-d1f9cc707516 store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p cdl.damage_queue 10
execute if score $used_golem_count cdl.damage_queue matches 4 as f8d7f040-fc82-4df6-acb2-d1f9cc707516 store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p cdl.damage_queue 10
execute if score $used_golem_count cdl.damage_queue matches 5 as f8d7f03f-fc82-4df6-acb2-d1f9cc707516 store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p cdl.damage_queue 10
execute if score $used_golem_count cdl.damage_queue matches 6 as f8d7f03e-fc82-4df6-acb2-d1f9cc707516 store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p cdl.damage_queue 10
execute if score $used_golem_count cdl.damage_queue matches 7 as f8d7f03d-fc82-4df6-acb2-d1f9cc707516 store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p cdl.damage_queue 10
execute if score $used_golem_count cdl.damage_queue matches 8 as f8d7f03c-fc82-4df6-acb2-d1f9cc707516 store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p cdl.damage_queue 10
execute if score $used_golem_count cdl.damage_queue matches 9 as f8d7f03b-fc82-4df6-acb2-d1f9cc707516 store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p cdl.damage_queue 10
execute if score $used_golem_count cdl.damage_queue matches 10 as f8d7f044-fc82-4df6-acb2-d1f9cc707516 store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p cdl.damage_queue 10

scoreboard players set @s cdl.damage_queue 0
attribute @s minecraft:generic.knockback_resistance modifier add 31514192-0114-2651-8151-950000000005 cdl.Custom_Damage_KBR 10 add
scoreboard players set @s cdl.damage_timer 10

execute if score $used_golem_count cdl.damage_queue matches 1 as f8d7f043-fc82-4df6-acb2-d1f9cc707516 at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;1971877851,-578665873,-1870566665,283708112],damage:10d,Motion:[0b,-10b,0b]}
execute if score $used_golem_count cdl.damage_queue matches 2 as f8d7f042-fc82-4df6-acb2-d1f9cc707516 at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;1971877852,-578665873,-1870566665,283708112],damage:10d,Motion:[0b,-10b,0b]}
execute if score $used_golem_count cdl.damage_queue matches 3 as f8d7f041-fc82-4df6-acb2-d1f9cc707516 at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;1971877853,-578665873,-1870566665,283708112],damage:10d,Motion:[0b,-10b,0b]}
execute if score $used_golem_count cdl.damage_queue matches 4 as f8d7f040-fc82-4df6-acb2-d1f9cc707516 at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;1971877854,-578665873,-1870566665,283708112],damage:10d,Motion:[0b,-10b,0b]}
execute if score $used_golem_count cdl.damage_queue matches 5 as f8d7f03f-fc82-4df6-acb2-d1f9cc707516 at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;1971877855,-578665873,-1870566665,283708112],damage:10d,Motion:[0b,-10b,0b]}
execute if score $used_golem_count cdl.damage_queue matches 6 as f8d7f03e-fc82-4df6-acb2-d1f9cc707516 at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;1971877856,-578665873,-1870566665,283708112],damage:10d,Motion:[0b,-10b,0b]}
execute if score $used_golem_count cdl.damage_queue matches 7 as f8d7f03d-fc82-4df6-acb2-d1f9cc707516 at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;1971877857,-578665873,-1870566665,283708112],damage:10d,Motion:[0b,-10b,0b]}
execute if score $used_golem_count cdl.damage_queue matches 8 as f8d7f03c-fc82-4df6-acb2-d1f9cc707516 at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;1971877858,-578665873,-1870566665,283708112],damage:10d,Motion:[0b,-10b,0b]}
execute if score $used_golem_count cdl.damage_queue matches 9 as f8d7f03b-fc82-4df6-acb2-d1f9cc707516 at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;1971877859,-578665873,-1870566665,283708112],damage:10d,Motion:[0b,-10b,0b]}
execute if score $used_golem_count cdl.damage_queue matches 10 as f8d7f044-fc82-4df6-acb2-d1f9cc707516 at @s run summon arrow ~ ~3.0001 ~ {UUID:[I;1971877850,-578665873,-1870566665,283708112],damage:10d,Motion:[0b,-10b,0b]}

execute if score $used_golem_count cdl.damage_queue matches 1 run data modify entity 758877db-dd82-426f-9081-6af710e90ad0 Owner set from entity @s UUID
execute if score $used_golem_count cdl.damage_queue matches 2 run data modify entity 758877dc-dd82-426f-9081-6af710e90ad0 Owner set from entity @s UUID
execute if score $used_golem_count cdl.damage_queue matches 3 run data modify entity 758877dd-dd82-426f-9081-6af710e90ad0 Owner set from entity @s UUID
execute if score $used_golem_count cdl.damage_queue matches 4 run data modify entity 758877de-dd82-426f-9081-6af710e90ad0 Owner set from entity @s UUID
execute if score $used_golem_count cdl.damage_queue matches 5 run data modify entity 758877df-dd82-426f-9081-6af710e90ad0 Owner set from entity @s UUID
execute if score $used_golem_count cdl.damage_queue matches 6 run data modify entity 758877e0-dd82-426f-9081-6af710e90ad0 Owner set from entity @s UUID
execute if score $used_golem_count cdl.damage_queue matches 7 run data modify entity 758877e1-dd82-426f-9081-6af710e90ad0 Owner set from entity @s UUID
execute if score $used_golem_count cdl.damage_queue matches 8 run data modify entity 758877e2-dd82-426f-9081-6af710e90ad0 Owner set from entity @s UUID
execute if score $used_golem_count cdl.damage_queue matches 9 run data modify entity 758877e3-dd82-426f-9081-6af710e90ad0 Owner set from entity @s UUID
execute if score $used_golem_count cdl.damage_queue matches 10 run data modify entity 758877da-dd82-426f-9081-6af710e90ad0 Owner set from entity @s UUID

function cd:func/player_damage_normal/disguise/loop

function cd:func/custom_death/loop

