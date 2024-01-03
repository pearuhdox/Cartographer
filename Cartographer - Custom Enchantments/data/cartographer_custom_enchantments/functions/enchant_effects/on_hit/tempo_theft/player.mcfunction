scoreboard players operation @s ca.temp_level = $tempo_theft ca.weapon_var

execute unless score @s ca.temp_warp matches 1.. run particle minecraft:witch ~ ~1 ~ 0.35 0.35 0.35 0.1 12 normal
execute unless score @s ca.temp_warp matches 1.. run playsound minecraft:entity.illusioner.prepare_blindness player @a[distance=..10] ~ ~ ~ 1 2

execute if score $new_hit ca.tempo_theft matches 1.. unless score $melee ca.weapon_var matches 1.. run scoreboard players set @s ca.temp_warp 160
execute if score $new_hit ca.tempo_theft matches 1.. if score $melee ca.weapon_var matches 1.. run scoreboard players set @s ca.temp_warp 80

execute unless score $new_hit ca.tempo_theft matches 1.. run scoreboard players add @s ca.temp_warp 21


function #minecraft:cartographer/events/enchantments/ranged/tempo_theft

scoreboard players set $new_hit ca.tempo_theft 0