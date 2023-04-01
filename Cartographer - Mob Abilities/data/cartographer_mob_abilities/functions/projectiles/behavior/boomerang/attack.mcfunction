execute if entity @s[tag=ca.blazing] run particle lava ~ ~0.25 ~ 0.5 0 0.5 0 15 normal
execute if entity @s[tag=ca.glacial] run particle item_snowball ~ ~0.25 ~ 0.5 0 0.5 0 15 normal
execute if entity @s[tag=ca.horrifying] run particle dust 0.302 0.2 0.761 1 ~ ~0.25 ~ 0.5 0 0.5 0 15 normal
execute if entity @s[tag=ca.overloading] run particle wax_off ~ ~0.25 ~ 0.5 0 0.5 1 15 normal
execute if entity @s[tag=ca.venemous] run particle item_slime ~ ~0.25 ~ 0.5 0 0.5 0.1 15 normal
execute if entity @s[tag=ca.zephyrous] run particle cloud ~ ~0.25 ~ 0.5 0 0.5 0.05 15 normal
execute if entity @s[tag=ca.webbing] run particle block minecraft:cobweb ~ ~0.25 ~ 0.5 0 0.5 0.05 15 normal
execute if entity @s[tag=ca.cursing] run particle squid_ink ~ ~0.25 ~ 0.5 0 0.5 0.05 1 normal

function delta:api/explosion_particle

scoreboard players set $projectile ca.dmg_type 1

execute at @s run tp 31182015-4512-2011-3118-115180000000 ^ ^1 ^1
execute if entity @s[tag=ca.zephyrous] run scoreboard players set $zeph_check ca.mob_var 1
execute if entity @s[tag=ca.knockback] run scoreboard players set $zeph_check ca.mob_var 1

scoreboard players operation $boomerang ca.ability_dmg = @s ca.ability_dmg

execute as @a[distance=..2,limit=1,sort=nearest] at @s facing entity 31182015-4512-2011-3118-115180000000 feet rotated ~ ~-15 run function cartographer_mob_abilities:projectiles/behavior/boomerang/player

execute as @s positioned as @a[scores={ca.damage_queue=1..},distance=..2] run function cartographer_mob_abilities:helper/damage/ability_projectile

scoreboard players set $zeph_check ca.mob_var 0

#Trait Effects
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..2,sort=nearest,limit=1] at @s run tag @s add ability_tagged
execute if entity @a[tag=ability_tagged] positioned ^ ^1 ^-3 run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

tp 31182015-4512-2011-3118-115180000000 4206900 128 4206900

kill @s