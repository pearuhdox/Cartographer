execute if score @s ca.adrenaline_dur matches 0 run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 2 1.2

scoreboard players set @s ca.adrenaline_dur 200
scoreboard players operation @s ca.adrenaline_lvl = @s ca.adrenaline 