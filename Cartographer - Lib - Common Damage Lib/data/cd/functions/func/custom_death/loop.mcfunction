execute as @a[scores={cdl.Death=1..,cdl.Damage_Timer=4}] at @s if score $gamerule.Death_Messages cdl.Temp matches 1 run function cd:func/custom_death/dead_player_found/message
execute as @a[scores={cdl.Damage_Timer=4}] run function cd:func/custom_death/dead_player_found/reset_scores

execute unless entity @a[scores={cdl.Death_ID=1..}] if score $gamerule.Death_Messages cdl.Temp matches 1 run gamerule showDeathMessages true
execute if entity @a[scores={cdl.Damage_Timer=1..}] run schedule function cd:func/custom_death/loop 1t