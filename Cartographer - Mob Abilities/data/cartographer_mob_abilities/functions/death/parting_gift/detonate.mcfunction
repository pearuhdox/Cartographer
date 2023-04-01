playsound minecraft:delta.entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 1 1.3

particle minecraft:cloud ~ ~0.3 ~ 1 0 1 0.05 100 normal
function cartographer_mob_abilities:death/parting_gift/ring_vfx

execute if entity @s[tag=ca.blazing] run particle minecraft:flame ~ ~0.5 ~ 1 0.2 1 0.15 20 normal
execute if entity @s[tag=ca.glacial] run particle minecraft:item_snowball ~ ~0.5 ~ 1 0.2 1 0.15 20 normal
execute if entity @s[tag=ca.overloading] run particle minecraft:wax_off ~ ~0.5 ~ 1 0.2 1 0.5 20 normal
execute if entity @s[tag=ca.venemous] run particle minecraft:item_slime ~ ~0.5 ~ 1 0.2 1 0.15 20 normal
execute if entity @s[tag=ca.zephyrous] run particle minecraft:cloud ~ ~0.5 ~ 1 0.2 1 0.15 20 normal
execute if entity @s[tag=ca.celestial] run particle minecraft:soul_fire_flame ~ ~0.5 ~ 1 0.2 1 0.15 20 normal
execute if entity @s[tag=ca.horrifying] run particle minecraft:sculk_soul ~ ~0.5 ~ 1 0.2 1 0.15 20 normal

scoreboard players set $explosion ca.dmg_type 1

scoreboard players add @a[distance=..4] ca.damage_queue 2
scoreboard players add @a[distance=..3.5] ca.damage_queue 2
scoreboard players add @a[distance=..3] ca.damage_queue 3
scoreboard players add @a[distance=..2.5] ca.damage_queue 3

execute at @s run tp 31182015-4512-2011-3118-115180000000 ~ ~1 ~

tag @a[distance=..4] add ability_tagged
execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

execute if entity @s[tag=ca.celestial] as @e[type=#bb:hostile,distance=..4] at @s run function cartographer_mob_abilities:death/parting_gift/celestial_heal
execute if entity @s[tag=ca.zephyrous] run scoreboard players set $zeph_check ca.mob_var 1
execute if entity @s[tag=ca.knockback] run scoreboard players set $zeph_check ca.mob_var 1

execute as @a[distance=..4] at @s facing entity 31182015-4512-2011-3118-115180000000 feet rotated ~180 ~-25 run function cartographer_mob_abilities:death/parting_gift/player
execute as @s positioned as @a[scores={ca.damage_queue=1..},distance=..4] run function cartographer_mob_abilities:helper/damage/ability_explosion

scoreboard players set $zeph_check ca.mob_var 0

execute if entity @s[tag=ca.lingering] run function cartographer_mob_abilities:death/parting_gift/cloud/spawn

tp 31182015-4512-2011-3118-115180000000 4206900 128 4206900

kill @s