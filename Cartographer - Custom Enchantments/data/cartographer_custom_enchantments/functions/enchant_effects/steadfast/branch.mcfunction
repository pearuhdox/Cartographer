execute if score @s ca.steadfast_dur matches 0 run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 2 1.2

scoreboard players set @s ca.steadfast_dur 200
scoreboard players operation @s ca.steadfast_lvl = @s ca.steadfast 