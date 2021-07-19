##Store damage being done
#Resets
scoreboard players set $player.Start_Damage cdl.Temp 0
scoreboard players set $player.Start_Health cdl.Temp 0
#Store
scoreboard players operation $player.Start_Damage cdl.Temp = @s cdl.Damage_Queue
scoreboard players operation $player.Start_Health cdl.Temp = @s cdl.P_Health
#Kill if projected to die
execute if score $player.Start_Damage cdl.Temp >= $player.Start_Health cdl.Temp run kill @s

#Continue calculations if alive
execute unless score $player.Start_Damage cdl.Temp >= $player.Start_Health cdl.Temp run function cd:func/player_damage_true/health