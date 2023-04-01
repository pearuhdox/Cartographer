scoreboard players set $diff ca.brittle_hlth 0
scoreboard players set $old_health ca.brittle_hlth 0
scoreboard players set $new_health ca.brittle_hlth 0

scoreboard players operation $old_health ca.brittle_hlth = @s ca.brittle_hlth

execute store result score $new_health ca.brittle_hlth run data get entity @s Health

scoreboard players operation $diff ca.brittle_hlth = $old_health ca.brittle_hlth
scoreboard players operation $diff ca.brittle_hlth -= $new_health ca.brittle_hlth

scoreboard players operation $diff_check ca.brittle_hlth = $diff ca.brittle_hlth

scoreboard players operation $diff ca.brittle_hlth *= @s ca.cauter_dmg
scoreboard players operation $diff ca.brittle_hlth /= $100 ca.CONSTANT

scoreboard players operation $kb ca.cauter_dmg = @s ca.cauter_dmg
scoreboard players operation $kb ca.cauter_dmg /= $20 ca.CONSTANT

execute if score $kb ca.cauter_dmg matches 13.. run scoreboard players set $kb ca.cauter_dmg 12
execute if score $kb ca.cauter_dmg matches ..3 run scoreboard players set $kb ca.cauter_dmg 4

scoreboard players operation $kb ca.cauter_dmg *= $-1 ca.CONSTANT

execute if score $diff ca.brittle_hlth matches 1.. run scoreboard players operation @s ca.damage_queue = $diff ca.brittle_hlth

execute if score @s ca.damage_queue matches 1.. run function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass

playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..10] ~ ~ ~ 0.5 0.5
playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..10] ~ ~ ~ 0.5 1
playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..10] ~ ~ ~ 0.5 1.5
playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..10] ~ ~ ~ 0.5 2

playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..10] ~ ~ ~ 1 0.75

particle minecraft:explosion ~ ~0.2 ~ 0 0 0 0 1 force

scoreboard players set @s ca.brittle_time 1

scoreboard players set @s co_y 4
scoreboard players operation @s co_send = $kb ca.cauter_dmg
function motion:motion/push

#Run Tag Here for Triggering a Cauterize Mark
function #minecraft:cartographer/events/enchants_mob_hit/passive/cauterize