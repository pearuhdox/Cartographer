execute store result score $gamerule.Death_Messages cdl.Temp run gamerule showDeathMessages
execute if score $gamerule.Death_Messages cdl.Temp matches 1 run gamerule showDeathMessages false

#Save current health
scoreboard players set $player.Health_Before_HBC cdl.Temp 0
scoreboard players operation $player.Health_Before_HBC cdl.Temp = @s cdl.P_Health

#Save health boost
execute if predicate cd:has_health_boost at @s run function cd:func/player_damage_true/save_health_boost

#Absorption damage
execute if score @s cdl.Damage_Queue matches 1.. if predicate cd:has_absorption run function cd:func/player_damage_true/absorption

#Health damage
execute if score @s cdl.Damage_Queue matches 1.. run function cd:func/player_damage_true/death_check

scoreboard players set @s cdl.Damage_Timer 10
function cd:func/player_damage_true/death_timer/loop
function cd:func/custom_death/loop