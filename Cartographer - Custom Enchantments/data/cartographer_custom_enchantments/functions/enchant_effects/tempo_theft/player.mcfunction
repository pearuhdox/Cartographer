execute if entity @s[scores={ca.tempo_theft=1}] run scoreboard players set @s ca.temp_warp 200
execute if entity @s[scores={ca.tempo_theft=2}] run scoreboard players set @s ca.temp_warp 400
execute if entity @s[scores={ca.tempo_theft=3}] run scoreboard players set @s ca.temp_warp 600

execute run particle minecraft:witch ~ ~1 ~ 0.35 0.35 0.35 0.1 20 normal
execute run playsound minecraft:entity.illusioner.prepare_blindness player @a[distance=..10] ~ ~ ~ 1 2

function #minecraft:cartographer/events/enchantments/ranged/tempo_theft
