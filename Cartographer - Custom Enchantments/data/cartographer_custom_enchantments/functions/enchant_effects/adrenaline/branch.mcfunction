execute if score @s ca.adren_time matches 0 run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 2 1.2

scoreboard players set @s ca.adren_time 200
scoreboard players operation @s ca.adren_time *= @s ca.adrenaline 