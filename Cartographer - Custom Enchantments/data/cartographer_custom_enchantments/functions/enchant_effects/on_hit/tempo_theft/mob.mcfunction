function #minecraft:cartographer/events/enchants_mob_hit/ranged/tempo_theft

execute if score $tempo_theft ca.weapon_var matches 1.. unless score @s ca.temp_warp matches 1.. run scoreboard players set $new_hit ca.tempo_theft 1

execute if score $new_hit ca.tempo_theft matches 1.. unless score $melee ca.weapon_var matches 1.. run scoreboard players set @s ca.temp_warp 160
execute if score $new_hit ca.tempo_theft matches 1.. if score $melee ca.weapon_var matches 1.. run scoreboard players set @s ca.temp_warp 80

execute unless score $new_hit ca.tempo_theft matches 1.. run scoreboard players add @s ca.temp_warp 21

scoreboard players operation @s ca.temp_level = $tempo_theft ca.weapon_var

execute run particle minecraft:witch ~ ~1 ~ 0.35 0.35 0.35 0.1 8 normal
#execute run playsound minecraft:entity.illusioner.prepare_blindness player @a[distance=..10] ~ ~ ~ 1 2

execute on attacker run function cartographer_custom_enchantments:enchant_effects/on_hit/tempo_theft/player