#Get the player's absorption health.
execute as @s store result score @s second_wind_abso run data get entity @s AbsorptionAmount

#Play ticking sound if player has 1+ absorption health.
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_abso=1..}] run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_abso=1..}] run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 10 0.5
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_abso=1..}] run particle minecraft:flash ~ ~1 ~8 0 0 0 10 1 force
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_abso=1..}] run particle minecraft:flash ~ ~1 ~-8 0 0 0 10 1 force
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_abso=1..}] run particle minecraft:flash ~8 ~1 ~ 0 0 0 10 1 force
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_abso=1..}] run particle minecraft:flash ~-8 ~1 ~ 0 0 0 10 1 force
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_abso=1..}] run particle minecraft:flash ~6 ~1 ~6 0 0 0 10 1 force
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_abso=1..}] run particle minecraft:flash ~6 ~1 ~-6 0 0 0 10 1 force
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_abso=1..}] run particle minecraft:flash ~-6 ~1 ~6 0 0 0 10 1 force
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_abso=1..}] run particle minecraft:flash ~-6 ~1 ~-6 0 0 0 10 1 force
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_abso=1..}] run particle minecraft:witch ~ ~1.5 ~ 2 0.5 2 0.1 50 force

#If the health is 0, do damage to them. Mark them with a tag for custom death message.

#If the player managed to get a kill, grace system implements. No heal, but not forcibly killed.
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=0}] run execute as @s at @s run tag @s add bypass_sw

execute if entity @s[tag=life_fight,tag=!bypass_sw,scores={second_wind=1,second_wind_abso=0,second_wind_cool=1..9,second_wind_tier=1}] run execute as @s at @s run scoreboard players set @s damage_queue 10
execute if entity @s[tag=life_fight,tag=!bypass_sw,scores={second_wind=1,second_wind_abso=0,second_wind_cool=1..9,second_wind_tier=2}] run execute as @s at @s run scoreboard players set @s damage_queue 15
execute if entity @s[tag=life_fight,tag=!bypass_sw,scores={second_wind=1,second_wind_abso=0,second_wind_cool=1..9,second_wind_tier=3}] run execute as @s at @s run scoreboard players set @s damage_queue 20
execute if entity @s[tag=life_fight,tag=!bypass_sw,scores={second_wind=1,second_wind_abso=0,second_wind_cool=1..9,second_wind_tier=4..}] run execute as @s at @s run scoreboard players set @s damage_queue 30

execute if entity @s[tag=life_fight,tag=!bypass_sw,scores={second_wind=1,second_wind_abso=0,second_wind_cool=1..9}] run playsound minecraft:block.bell.use player @a[distance=..8] ~ ~ ~ 10 0.5
execute if entity @s[tag=life_fight,tag=!bypass_sw,scores={second_wind=1,second_wind_abso=0,second_wind_cool=1..9}] run playsound minecraft:block.respawn_anchor.set_spawn player @a[distance=..8] ~ ~ ~ 10 2
execute if entity @s[tag=life_fight,tag=!bypass_sw,scores={second_wind=1,second_wind_abso=0,second_wind_cool=1..9}] run particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 1 force
execute if entity @s[tag=life_fight,tag=!bypass_sw,scores={second_wind=1,second_wind_abso=0,second_wind_cool=1..9}] run particle minecraft:witch ~ ~1 ~ 0.5 0 0.5 0.1 50 force
execute if entity @s[tag=life_fight,tag=!bypass_sw,scores={second_wind=1,second_wind_abso=0,second_wind_cool=1..9}] run execute as @s at @s run tag @s add second_winded
execute if entity @s[tag=life_fight,tag=!bypass_sw,scores={second_wind=1,second_wind_abso=0,second_wind_cool=1..9}] run execute as @s at @s run function cartographer_core:helper/hurt_player/by_score
execute if entity @s[tag=life_fight,tag=!bypass_sw,scores={second_wind=1,second_wind_abso=0,second_wind_cool=1..9}] run execute as @s at @s run scoreboard players set @s second_wind_cool 10
execute if entity @s[tag=life_fight,tag=!bypass_sw,scores={second_wind=1,second_wind_abso=0,second_wind_cool=1..9}] run execute as @s at @s run tag @s remove life_fight

tag @s[tag=bypass_sw] remove bypass_sw

#Check if the player has killed a mob. If so, heal the player equal to their absorption shielding.
#Increase the player's second wind "tier" by 1.
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=1}] run execute as @s at @s run function cartographer_core:helper/heal_player/1

execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=2}] run execute as @s at @s run function cartographer_core:helper/heal_player/2

execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=3}] run execute as @s at @s run function cartographer_core:helper/heal_player/2
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=3}] run execute as @s at @s run function cartographer_core:helper/heal_player/1

execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=4}] run execute as @s at @s run function cartographer_core:helper/heal_player/4

execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=5}] run execute as @s at @s run function cartographer_core:helper/heal_player/4
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=5}] run execute as @s at @s run function cartographer_core:helper/heal_player/1

execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=6}] run execute as @s at @s run function cartographer_core:helper/heal_player/2
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=6}] run execute as @s at @s run function cartographer_core:helper/heal_player/4 

execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=7}] run execute as @s at @s run function cartographer_core:helper/heal_player/4
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=7}] run execute as @s at @s run function cartographer_core:helper/heal_player/2
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=7}] run execute as @s at @s run function cartographer_core:helper/heal_player/1

execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=8}] run execute as @s at @s run function cartographer_core:helper/heal_player/8

execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=1..}] run playsound minecraft:block.respawn_anchor.charge player @a[distance=..8] ~ ~ ~ 10 2
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=1..}] run playsound minecraft:block.respawn_anchor.set_spawn player @a[distance=..8] ~ ~ ~ 2 2
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..,second_wind_abso=1..}] run particle minecraft:end_rod ~ ~1 ~ 0.5 0 0.5 0.2 40 normal

execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..}] run execute as @s at @s run effect clear @s absorption
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..}] run execute as @s at @s run scoreboard players set @s second_wind_cool 10
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..}] run execute as @s at @s run tag @s remove life_fight
execute if entity @s[tag=life_fight,scores={second_wind=1,second_wind_kill=1..}] run execute as @s at @s run scoreboard players set @s second_wind_kill 0

#Add cooldown score to track time.
execute if entity @s[scores={second_wind=1,second_wind=1..,second_wind_cool=..180}] run scoreboard players add @s second_wind_cool 1

#Reset tier if player's cooldown is 180 seconds.
execute if entity @s[scores={second_wind=1,second_wind=1..,second_wind_cool=180}] run scoreboard players set @s second_wind_tier 0