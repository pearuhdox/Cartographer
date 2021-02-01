gamerule sendCommandFeedback false
schedule function cartographer_core:load/fix_gamerules 2t
schedule function cartographer_core:load/gamerule_states 3t

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add @p no_hndbk_pmpt 1
scoreboard players set @p[scores={no_hndbk_pmpt=2..}] no_hndbk_pmpt 0

title @p[scores={no_hndbk_pmpt=1}] actionbar [{"text":"Handbook Prompts","color":"aqua","italic":false},{"text":" have been disabled!","color":"#FFE0A3","italic":false}]
title @p[scores={no_hndbk_pmpt=0}] actionbar [{"text":"Handbook Prompts","color":"aqua","italic":false},{"text":" have been enabled!","color":"#FFE0A3","italic":false}]

schedule function cartographer_core:load/command_feedback 1t