execute if entity @s[tag=ca.blazing] run particle lava ~ ~0.4 ~ 2 0.3 2 0 20 normal
execute if entity @s[tag=ca.glacial] run particle item_snowball ~ ~0.4 ~ 2 0.3 2 0 40 normal
execute if entity @s[tag=ca.horrifying] run particle sculk_soul ~ ~0.4 ~ 2 0.3 2 0.1 30 normal
execute if entity @s[tag=ca.overloading] run particle electric_spark ~ ~0.4 ~ 2 0.3 2 1 40 normal
execute if entity @s[tag=ca.venemous] run particle item_slime ~ ~0.4 ~ 2 0.3 2 0.1 40 normal
execute if entity @s[tag=ca.zephyrous] run particle cloud ~ ~0.4 ~ 2 0.3 2 0.05 40 normal
execute if entity @s[tag=ca.alchemist] run particle effect ~ ~0.4 ~ 2 0.3 2 0.05 40 normal
execute if entity @s[tag=ca.webbing] run particle block cobweb ~ ~0.4 ~ 2 0.3 2 0.05 40 normal
execute if entity @s[tag=ca.cursing] run particle squid_ink ~ ~0.4 ~ 2 0.3 2 0.05 1 normal


particle explosion ~ ~0.25 ~ 1.5 0 1.5 0 8 normal
playsound minecraft:delta.entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 2 1

scoreboard players set $explosion ca.dmg_type 1
scoreboard players set $projectile ca.dmg_type 1

execute at @s run tp 31182015-4512-2011-3118-115180000000 ~ ~0.5 ~
execute if entity @s[tag=ca.zephyrous] run scoreboard players set $zeph_check ca.mob_var 1
execute if entity @s[tag=ca.knockback] run scoreboard players set $zeph_check ca.mob_var 1

scoreboard players operation $grenade ca.ability_dmg = @s ca.ability_dmg

execute as @a[gamemode=!spectator,gamemode=!creative,distance=..3.5] at @s facing entity 31182015-4512-2011-3118-115180000000 feet rotated ~180 ~-30 run function cartographer_mob_abilities:projectiles/behavior/grenade/player
execute as @s positioned as @a[scores={ca.damage_queue=1..},distance=..3.5] run function cartographer_mob_abilities:helper/damage/ability_projectile

scoreboard players set $zeph_check ca.mob_var 0

#Trait Effects
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..3.5,sort=nearest,limit=1] at @s run tag @s add ability_tagged
execute if entity @a[tag=ability_tagged] run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

tp 31182015-4512-2011-3118-115180000000 4206900 128 4206900

kill @s