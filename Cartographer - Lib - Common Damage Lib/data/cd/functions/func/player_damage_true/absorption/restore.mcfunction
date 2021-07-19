#Converting into amplifier
scoreboard players set @s cdl.Damage_Queue 0
scoreboard players operation $player.Absorption cdl.Temp /= $constant.4 cdl.Temp
scoreboard players remove $player.Absorption cdl.Temp 1

#Restoring effect to nearest value
execute if score $player.Absorption cdl.Temp matches 0.. run function cd:func/player_damage_true/absorption/restore_cloud