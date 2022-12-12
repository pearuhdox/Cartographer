particle minecraft:explosion ~ ~0.33 ~ 1 0.2 1 0 6 normal

playsound minecraft:entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 1 1.3

execute if entity @s[tag=ca.blazing] run particle minecraft:flame ~ ~0.5 ~ 1 0.2 1 0.15 20 normal
execute if entity @s[tag=ca.glacial] run particle minecraft:item_snowball ~ ~0.5 ~ 1 0.2 1 0.15 20 normal
execute if entity @s[tag=ca.overloading] run particle minecraft:wax_off ~ ~0.5 ~ 1 0.2 1 0.5 20 normal
execute if entity @s[tag=ca.venemous] run particle minecraft:item_slime ~ ~0.5 ~ 1 0.2 1 0.15 20 normal
execute if entity @s[tag=ca.zephyrous] run particle minecraft:cloud ~ ~0.5 ~ 1 0.2 1 0.15 20 normal
execute if entity @s[tag=ca.celestial] run particle minecraft:soul_fire_flame ~ ~0.5 ~ 1 0.2 1 0.15 20 normal
execute if entity @s[tag=ca.horrifying] run particle minecraft:sculk_soul ~ ~0.5 ~ 1 0.2 1 0.15 20 normal

scoreboard players set $explosion ca.dmg_type 1

scoreboard players add @a[distance=..4] cdl.damage_queue 2
scoreboard players add @a[distance=..3.5] cdl.damage_queue 2
scoreboard players add @a[distance=..3] cdl.damage_queue 3
scoreboard players add @a[distance=..2.5] cdl.damage_queue 3

tag @a[distance=..4] add ability_tagged
execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

execute if entity @s[tag=ca.celestial] as @e[type=#bb:hostile,distance=..4] at @s run function cartographer_mob_abilities:passive/parting_gift/celestial_heal

tag @a[distance=..4] remove ability_tagged
execute as @a[distance=..4] at @s run function cartographer_mob_abilities:helper/epf/damage_reduce/ask_reduction
execute as @a[distance=..4] at @s run scoreboard players set @s cdl.death_id 310215
execute rotated ~ 0 positioned ^ ^ ^1 facing entity @s feet rotated ~ 0 positioned as @s as @a[distance=..4] positioned as @s run function cartographer_core:helper/damage_knockback/targeting_direction

execute if entity @s[tag=ca.lingering] run function cartographer_mob_abilities:passive/parting_gift/cloud/spawn

kill @s