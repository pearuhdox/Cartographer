scoreboard players set $diff ca.brittle_hlth 0
scoreboard players set $old_health ca.brittle_hlth 0
scoreboard players set $new_health ca.brittle_hlth 0

scoreboard players operation $old_health ca.brittle_hlth = @s ca.brittle_hlth

execute store result score $new_health ca.brittle_hlth run data get entity @s Health

scoreboard players operation $diff ca.brittle_hlth = $old_health ca.brittle_hlth
scoreboard players operation $diff ca.brittle_hlth -= $new_health ca.brittle_hlth

execute if score $diff ca.brittle_hlth matches 1.. run scoreboard players operation @s cdl.damage_queue = $diff ca.brittle_hlth

execute if score @s cdl.damage_queue matches 1.. run function cd:lib/mob/damage/true

playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..10] ~ ~ ~ 0.5 0.5
playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..10] ~ ~ ~ 0.5 1
playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..10] ~ ~ ~ 0.5 1.5
playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..10] ~ ~ ~ 0.5 2

playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..10] ~ ~ ~ 1 0.75

particle minecraft:explosion ~ ~0.2 ~ 0 0 0 0 1 force

scoreboard players set @s ca.brittle_time 1

scoreboard players set @s co_y 3
scoreboard players set @s co_send -8
function motion:motion/push