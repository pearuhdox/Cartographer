
##Store damage being done
#Resets
scoreboard players set $player.start_damage bbl.storage 0
scoreboard players set $player.start_health bbl.storage 0
#Store
scoreboard players operation $player.start_damage bbl.storage = @s bbl.damage_queue
scoreboard players operation $player.start_health bbl.storage = @s bbl.p_health
#Kill if projected to die
execute if score $player.start_damage bbl.storage >= $player.start_health bbl.storage run kill @s

#Continue calculations if alive
execute unless score $player.start_damage bbl.storage >= $player.start_health bbl.storage run function bb:lib/hpm/player_damage_true/health
