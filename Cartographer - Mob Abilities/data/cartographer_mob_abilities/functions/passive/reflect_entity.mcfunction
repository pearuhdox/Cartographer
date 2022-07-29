execute as @s store result score @s reflect_check run data get entity @s Health
scoreboard players operation @s reflect_diff = @s reflect_past
scoreboard players operation @s reflect_diff -= @s reflect_check

scoreboard players operation @s reflect_diff /= $2 ca.CONSTANT

scoreboard players operation $reflect_pass reflect_diff = @s reflect_diff

#execute if entity @a[distance=..30,tag=reflect_hit] run scoreboard players operation @s cdl.heal_queue = @s reflect_diff
#execute if entity @a[distance=..30,tag=reflect_hit] run function cd:lib/mob/heal

execute if entity @a[distance=..30,tag=reflect_hit] run playsound minecraft:item.shield.block hostile @a[distance=..12] ~ ~ ~ 0.5 0.5
execute if entity @a[distance=..30,tag=reflect_hit] run playsound minecraft:entity.shulker.hurt_closed hostile @a[distance=..12] ~ ~ ~ 2 0.5
execute if entity @a[distance=..30,tag=reflect_hit] run playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..12] ~ ~ ~ 0.5 1.5
execute if entity @a[distance=..30,tag=reflect_hit] unless entity @a[distance=..8] run particle flash ^ ^1.5 ^1 0 0 0 0 1 force @s
execute if entity @a[distance=..30,tag=reflect_hit] at @s run tp @s ~ ~ ~ facing entity @a[distance=..30,tag=reflect_hit,limit=1,sort=nearest] feet
execute if entity @a[distance=..30,tag=reflect_hit] run scoreboard players set @s ca.raycast 30
execute if entity @a[distance=..30,tag=reflect_hit] at @s positioned ^ ^1 ^ run function cartographer_mob_abilities:passive/reflect_particle
execute if entity @a[distance=..30,tag=reflect_hit] run scoreboard players set @s ca.effect_stun 11
execute if entity @a[distance=..30,tag=reflect_hit] run scoreboard players set @s mob_move_red 41
execute if entity @a[distance=..30,tag=reflect_hit] run scoreboard players set @s mob_atk_red 41
execute if entity @a[distance=..30,tag=reflect_hit] run scoreboard players set @s ca.raycast 0

scoreboard players operation @s cdl.heal_queue = $reflect_pass reflect_diff
function cd:lib/mob/heal

execute if entity @a[distance=..30,tag=reflect_hit] at @s run function cartographer_mob_abilities:passive/reflected_notice