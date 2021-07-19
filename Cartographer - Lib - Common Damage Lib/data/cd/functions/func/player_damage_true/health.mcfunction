#Checking if damage was taken from max health clear
scoreboard players operation $player.Health cdl.Temp = @s cdl.P_Health
execute if score $player.Health_Before_HBC cdl.Temp > $player.Health cdl.Temp store result score $player.Lost_Health cdl.Temp run scoreboard players operation $player.Health cdl.Temp -= $player.Health_Before_HBC cdl.Temp
execute if score $player.Health cdl.Temp matches -99..-1 run scoreboard players operation @s cdl.Damage_Queue += $player.Health cdl.Temp

#Setting health offset
execute store result score $player.Health cdl.Temp run attribute @s minecraft:generic.max_health get
scoreboard players operation $player.Max_Health cdl.Temp = $player.Health cdl.Temp
scoreboard players operation $player.Health cdl.Temp -= @s cdl.P_Health
scoreboard players operation @s cdl.Damage_Queue += $player.Health cdl.Temp

#Setting up to initialize health
effect give @s minecraft:health_boost 1 3 true

#Setting health
execute if score @s cdl.Damage_Queue matches 1..15 run function cd:func/player_damage_true/damage_intervals/1-15
execute if score @s cdl.Damage_Queue matches 16..30 run function cd:func/player_damage_true/damage_intervals/16-30
execute if score @s cdl.Damage_Queue matches 31.. run function cd:func/player_damage_true/damage_intervals/31-40

#Finalization
effect clear @s minecraft:health_boost
attribute @s minecraft:generic.max_health modifier remove 31514192-0114-2651-8151-950000000006

execute if score @s cdl.Damage_Queue matches -99..-1 run function cd:func/player_damage_true/heal_from_hb_damage
