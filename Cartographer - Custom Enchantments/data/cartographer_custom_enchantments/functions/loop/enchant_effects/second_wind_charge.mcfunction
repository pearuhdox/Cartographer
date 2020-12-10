#Get the player's absorption health.
execute as @s store result score @s second_wind_abso run data get entity @s AbsorptionAmount

#If the health is 0, do damage to them. Mark them with a tag for custom death message.
execute if entity @s[scores={second_wind_abso=0,second_wind_cool=1..9,second_wind_tier=1}] run execute as @s at @s run scoreboard players set @s damage_queue 10
execute if entity @s[scores={second_wind_abso=0,second_wind_cool=1..9,second_wind_tier=2}] run execute as @s at @s run scoreboard players set @s damage_queue 20
execute if entity @s[scores={second_wind_abso=0,second_wind_cool=1..9,second_wind_tier=3}] run execute as @s at @s run scoreboard players set @s damage_queue 30
execute if entity @s[scores={second_wind_abso=0,second_wind_cool=1..9,second_wind_tier=4..}] run execute as @s at @s run scoreboard players set @s damage_queue 50

execute if entity @s[scores={second_wind_abso=0,second_wind_cool=1..9}] run execute as @s at @s run tag @s add second_winded
execute if entity @s[scores={second_wind_abso=0,second_wind_cool=1..9}] run execute as @s at @s run function cartographer_core:helper/hurt_player/by_score
execute if entity @s[scores={second_wind_abso=0,second_wind_cool=1..9}] run execute as @s at @s run scoreboard players set @s second_wind_cool 10

#Check if the player has killed a mob. If so, heal the player equal to their absorption shielding.
#Increase the player's second wind "tier" by 1.

execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=1}] run execute as @s at @s run function cartographer_core:helper/heal_player/1

execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=2}] run execute as @s at @s run function cartographer_core:helper/heal_player/2

execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=3}] run execute as @s at @s run function cartographer_core:helper/heal_player/2
execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=3}] run execute as @s at @s run function cartographer_core:helper/heal_player/1

execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=4}] run execute as @s at @s run function cartographer_core:helper/heal_player/4

execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=5}] run execute as @s at @s run function cartographer_core:helper/heal_player/4
execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=5}] run execute as @s at @s run function cartographer_core:helper/heal_player/1

execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=6}] run execute as @s at @s run function cartographer_core:helper/heal_player/2
execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=6}] run execute as @s at @s run function cartographer_core:helper/heal_player/4 

execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=7}] run execute as @s at @s run function cartographer_core:helper/heal_player/4
execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=7}] run execute as @s at @s run function cartographer_core:helper/heal_player/2
execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=7}] run execute as @s at @s run function cartographer_core:helper/heal_player/1

execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=8}] run execute as @s at @s run function cartographer_core:helper/heal_player/8

execute if entity @s[scores={second_wind_kill=1..}] run execute as @s at @s run effect clear @s absorption
execute if entity @s[scores={second_wind_kill=1..}] run execute as @s at @s run scoreboard players set @s second_wind_cool 10
execute if entity @s[scores={second_wind_kill=1..}] run execute as @s at @s run scoreboard players set @s second_wind_kill 0


#Add cooldown score to track time.
execute if entity @s[scores={second_wind=1..,second_wind_cool=..180}] run scoreboard players add @s second_wind_cool 1

#Reset tier if player's cooldown is 180 seconds.
execute if entity @s[scores={second_wind=1..,second_wind_cool=180}] run scoreboard players set @s second_wind_tier 0