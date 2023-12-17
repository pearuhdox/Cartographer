function #minecraft:cartographer/events/enchants_mob_hit/ranged/tempo_theft

execute on attacker run function cartographer_custom_enchantments:enchant_effects/tempo_theft/player

execute if score $tempo_theft ca.var matches 1.. run scoreboard players set @s ca.temp_warp 200

execute if score $tempo_theft ca.var matches 1 run scoreboard players set @s ca.temp_level 1
execute if score $tempo_theft ca.var matches 2 run scoreboard players set @s ca.temp_level 2
execute if score $tempo_theft ca.var matches 3 run scoreboard players set @s ca.temp_level 3
execute if score $tempo_theft ca.var matches 4 run scoreboard players set @s ca.temp_level 4
execute if score $tempo_theft ca.var matches 5 run scoreboard players set @s ca.temp_level 5
execute if score $tempo_theft ca.var matches 6 run scoreboard players set @s ca.temp_level 6
execute if score $tempo_theft ca.var matches 7 run scoreboard players set @s ca.temp_level 7
execute if score $tempo_theft ca.var matches 8 run scoreboard players set @s ca.temp_level 8
execute if score $tempo_theft ca.var matches 9 run scoreboard players set @s ca.temp_level 9
execute if score $tempo_theft ca.var matches 10.. run scoreboard players set @s ca.temp_level 10

execute run particle minecraft:witch ~ ~1 ~ 0.35 0.35 0.35 0.1 20 normal
execute run playsound minecraft:entity.illusioner.prepare_blindness player @a[distance=..10] ~ ~ ~ 1 2

tag @s remove is_tempo_1
tag @s remove is_tempo_2
tag @s remove is_tempo_3