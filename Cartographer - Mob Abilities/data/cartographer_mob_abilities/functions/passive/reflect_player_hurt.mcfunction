execute as @a[tag=reflect_hit] at @s run scoreboard players operation @s cdl.damage_queue = $reflect_pass reflect_diff

execute as @a[tag=reflect_hit] at @s run scoreboard players set @s cdl.death_id 310214

execute as @a[tag=reflect_hit] at @s run function cd:lib/player/damage/normal

execute as @a[tag=reflect_hit] at @s run playsound minecraft:entity.shulker.hurt_closed hostile @s ~ ~ ~ 2 0.5
execute as @a[tag=reflect_hit] at @s run playsound minecraft:entity.zombie.attack_iron_door player @s ~ ~ ~ 0.5 1.5

execute as @a[tag=reflect_hit] at @s run particle flash ^ ^1.5 ^1 0 0 0 0 1 force @s

execute as @a[tag=reflect_hit] at @s run tag @s remove reflect_hit

#say reflection damage