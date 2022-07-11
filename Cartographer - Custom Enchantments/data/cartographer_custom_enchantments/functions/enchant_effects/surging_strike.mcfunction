#Sfx and Vfx
execute if entity @s[scores={ca.surge_strike=1..}] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 2
execute if entity @s[scores={ca.surge_strike=1..}] run playsound minecraft:entity.zombie.infect player @s ~ ~ ~ 5 2

#While all attacks
execute if score @s ca.surge_strike matches 1.. run scoreboard players set @s ca.raycast 9

#Only while sprinting
execute if score @s ca.sprint matches 1.. if score @s ca.surge_strike matches 1.. run scoreboard players set @s ca.raycast 17

#Get and set score
execute store result score @s ca.attack_val run attribute @s minecraft:generic.attack_damage get

execute if entity @s[scores={ca.surge_strike=1}] run scoreboard players operation @s ca.attack_val /= $2 ca.CONSTANT

execute if entity @s[scores={ca.surge_strike=2}] run scoreboard players operation @s ca.attack_val /= $3 ca.CONSTANT
execute if entity @s[scores={ca.surge_strike=2}] run scoreboard players operation @s ca.attack_val *= $2 ca.CONSTANT

execute if entity @s[scores={ca.surge_strike=3}] run scoreboard players operation @s ca.attack_val /= $4 ca.CONSTANT
execute if entity @s[scores={ca.surge_strike=3}] run scoreboard players operation @s ca.attack_val *= $3 ca.CONSTANT
execute if entity @s[scores={ca.surge_strike=3}] run scoreboard players add @s ca.attack_val 1

scoreboard players operation $melee ca.attack_val = @s ca.attack_val
scoreboard players operation $melee ca.fire_aspect = @s ca.fire_aspect
scoreboard players operation $melee ca.frostbite = @s ca.frostbite
scoreboard players operation $melee ca.exposing = @s ca.exposing
scoreboard players operation $melee ca.bleeding = @s ca.bleeding
scoreboard players operation $melee ca.electrocute = @s ca.electrocute
scoreboard players operation $melee ca.stunning = @s ca.stunning
scoreboard players operation $melee ca.infection = @s ca.infection
scoreboard players operation $melee ca.possession = @s ca.possession

execute if score @s ca.surge_strike matches 1.. positioned ~ ~1.2 ~ positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchant_effects/surging_strike/raycast

#Resets
execute if entity @s[scores={ca.surge_strike=1..}] as @e[type=#bb:hostile,tag=thrusted,distance=..15] at @s run tag @s remove thrusted

scoreboard players set $melee ca.attack_val 0
scoreboard players set $melee ca.fire_aspect 0
scoreboard players set $melee ca.frostbite 0
scoreboard players set $melee ca.exposing 0
scoreboard players set $melee ca.bleeding 0
scoreboard players set $melee ca.electrocute 0
scoreboard players set $melee ca.stunning 0
scoreboard players set $melee ca.infection 0
scoreboard players set $melee ca.possession 0

#Debug Message
tellraw @a[tag=debug,scores={ca.surge_strike=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Surging Strike.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]