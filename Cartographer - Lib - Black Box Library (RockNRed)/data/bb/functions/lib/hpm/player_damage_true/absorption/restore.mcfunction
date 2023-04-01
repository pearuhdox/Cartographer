
#Converting into amplifier
scoreboard players set @s bbl.damage_queue 0
scoreboard players operation $player.absorption bbl.storage /= $4 bbl.constant
scoreboard players remove $player.absorption bbl.storage 1

#Restoring effect to nearest value
execute if score $player.absorption bbl.storage matches 0.. run function bb:lib/hpm/player_damage_true/absorption/restore_cloud