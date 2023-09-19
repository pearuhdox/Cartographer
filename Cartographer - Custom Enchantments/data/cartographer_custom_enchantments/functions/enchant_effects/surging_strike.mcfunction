function #minecraft:cartographer/events/enchantments/melee/surging_strike

#Sfx and Vfx
execute if entity @s[scores={ca.surging_strike=1..}] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 2
execute if entity @s[scores={ca.surging_strike=1..}] run playsound minecraft:entity.zombie.infect player @s ~ ~ ~ 5 2

#While all attacks
execute if score @s ca.surging_strike matches 1.. run scoreboard players set @s ca.raycast 7

#Only while sprinting
execute if score @s ca.sprint matches 1.. if score @s ca.surging_strike matches 1.. run scoreboard players set @s ca.raycast 13

#Get and set score
execute store result score @s ca.attack_val run attribute @s minecraft:generic.attack_damage get

execute if entity @s[scores={ca.surging_strike=1}] run scoreboard players operation @s ca.attack_val /= $2 ca.CONSTANT

execute if entity @s[scores={ca.surging_strike=2}] run scoreboard players operation @s ca.attack_val /= $3 ca.CONSTANT
execute if entity @s[scores={ca.surging_strike=2}] run scoreboard players operation @s ca.attack_val *= $2 ca.CONSTANT

execute if entity @s[scores={ca.surging_strike=3}] run scoreboard players operation @s ca.attack_val /= $4 ca.CONSTANT
execute if entity @s[scores={ca.surging_strike=3}] run scoreboard players operation @s ca.attack_val *= $3 ca.CONSTANT
execute if entity @s[scores={ca.surging_strike=3}] run scoreboard players add @s ca.attack_val 1

scoreboard players operation $melee ca.attack_val = @s ca.attack_val
scoreboard players operation $melee ca.fire_aspect = @s ca.fire_aspect
scoreboard players operation $melee ca.frostbite = @s ca.frostbite

function cartographer_custom_statuses:calls/player_hit/melee

execute if score @s ca.surging_strike matches 1.. anchored eyes positioned ^ ^-0.4 ^1 rotated ~ 0 run function cartographer_custom_enchantments:enchant_effects/surging_strike/raycast

#Resets
execute if entity @s[scores={ca.surging_strike=1..}] as @e[type=#bb:hostile,tag=thrusted,distance=..15] at @s run tag @s remove thrusted

scoreboard players set $melee ca.attack_val 0
scoreboard players set $melee ca.fire_aspect 0
scoreboard players set $melee ca.frostbite 0
