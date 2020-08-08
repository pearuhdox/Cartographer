#Get the player's absorption health.
execute as @s store result score @s second_wind_abso run data get entity @s AbsorptionAmount

#If the health is 0, drop a firework on them based on "tier".
execute if entity @s[scores={second_wind_abso=0,second_wind_cool=1..9,second_wind_tier=1}] run execute as @s at @s run summon firework_rocket ~ ~1 ~ {Silent:1,LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16772608]}]}}}}
execute if entity @s[scores={second_wind_abso=0,second_wind_cool=1..9,second_wind_tier=2}] run execute as @s at @s run summon firework_rocket ~ ~1 ~ {Silent:1,LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16772608]},{Type:0,Colors:[I;16772608]},{Type:0,Colors:[I;16772608]}]}}}}
execute if entity @s[scores={second_wind_abso=0,second_wind_cool=1..9,second_wind_tier=3}] run execute as @s at @s run summon firework_rocket ~ ~1 ~ {Silent:1,LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16772608]},{Type:0,Colors:[I;16772608]},{Type:0,Colors:[I;16772608]},{Type:0,Colors:[I;16772608]},{Type:0,Colors:[I;16772608]}]}}}}
execute if entity @s[scores={second_wind_abso=0,second_wind_cool=1..9,second_wind_tier=4..}] run execute as @s at @s run summon firework_rocket ~ ~1 ~ {Silent:1,LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16772608]},{Type:0,Colors:[I;16772608]},{Type:0,Colors:[I;16772608]},{Type:0,Colors:[I;16772608]},{Type:0,Colors:[I;16772608]},{Type:0,Colors:[I;16772608]},{Type:0,Colors:[I;16772608]}]}}}}

execute if entity @s[scores={second_wind_abso=0,second_wind_cool=1..9}] run execute as @s at @s run scoreboard players set @s second_wind_cool 10

#Check if the player has killed a mob. If so, heal the player equal to their absorption shielding.
#Increase the player's second wind "tier" by 1.

execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=1}] run execute as @s at @s run function cartographer_core:helper/heal_player/1 
execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=2}] run execute as @s at @s run function cartographer_core:helper/heal_player/2 
execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=3}] run execute as @s at @s run function cartographer_core:helper/heal_player/3 
execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=4}] run execute as @s at @s run function cartographer_core:helper/heal_player/4 
execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=5}] run execute as @s at @s run function cartographer_core:helper/heal_player/5 
execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=6}] run execute as @s at @s run function cartographer_core:helper/heal_player/6 
execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=7}] run execute as @s at @s run function cartographer_core:helper/heal_player/7 
execute if entity @s[scores={second_wind_kill=1..,second_wind_abso=8}] run execute as @s at @s run function cartographer_core:helper/heal_player/8 

execute if entity @s[scores={second_wind_kill=1..}] run execute as @s at @s run effect clear @s absorption
execute if entity @s[scores={second_wind_kill=1..}] run execute as @s at @s run scoreboard players set @s second_wind_cool 10
execute if entity @s[scores={second_wind_kill=1..}] run execute as @s at @s run scoreboard players set @s second_wind_kill 0


#Add cooldown score to track time.
execute if entity @s[scores={second_wind=1..,second_wind_cool=..180}] run scoreboard players add @s second_wind_cool 1

#Reset tier if player's cooldown is 180 seconds.
execute if entity @s[scores={second_wind=1..,second_wind_cool=180}] run scoreboard players set @s second_wind_tier 0