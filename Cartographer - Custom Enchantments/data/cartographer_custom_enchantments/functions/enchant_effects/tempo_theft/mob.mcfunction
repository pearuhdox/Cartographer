function #minecraft:cartographer/events/enchants_mob_hit/ranged/tempo_theft

execute if entity @s[tag=is_tempo_1] run scoreboard players set @s ca.temp_warp 200
execute if entity @s[tag=is_tempo_2] run scoreboard players set @s ca.temp_warp 400
execute if entity @s[tag=is_tempo_3] run scoreboard players set @s ca.temp_warp 600

execute run particle minecraft:witch ~ ~1 ~ 0.35 0.35 0.35 0.1 20 normal
execute run playsound minecraft:entity.illusioner.prepare_blindness player @a[distance=..10] ~ ~ ~ 1 2

tag @s remove is_tempo_1
tag @s remove is_tempo_2
tag @s remove is_tempo_3