#Sfx and Vfx
execute if entity @s[scores={surging_strike=1..}] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 2
execute if entity @s[scores={surging_strike=1..}] run playsound minecraft:entity.zombie.infect player @s ~ ~ ~ 5 2

#While all attacks
execute if score @s surging_strike matches 1.. run scoreboard players set @s helper_raycast 9

#Only while sprinting
execute if score @s helper_sprint matches 1.. if score @s surging_strike matches 1.. run scoreboard players set @s helper_raycast 17

#Get and set score
execute store result score @s ca.attack_val run attribute @s minecraft:generic.attack_damage get

execute if entity @s[scores={surging_strike=1}] run scoreboard players operation @s ca.attack_val /= $custom_enchant.2 ca.CONSTANT

execute if entity @s[scores={surging_strike=2}] run scoreboard players operation @s ca.attack_val /= $custom_enchant.3 ca.CONSTANT
execute if entity @s[scores={surging_strike=2}] run scoreboard players operation @s ca.attack_val *= $custom_enchant.2 ca.CONSTANT

execute if entity @s[scores={surging_strike=3}] run scoreboard players operation @s ca.attack_val /= $custom_enchant.4 ca.CONSTANT
execute if entity @s[scores={surging_strike=3}] run scoreboard players operation @s ca.attack_val *= $custom_enchant.3 ca.CONSTANT
execute if entity @s[scores={surging_strike=3}] run scoreboard players add @s ca.attack_val 1

scoreboard players operation $melee ca.attack_val = @s ca.attack_val
scoreboard players operation $melee fire_aspect = @s fire_aspect
scoreboard players operation $melee frostbite = @s frostbite
scoreboard players operation $melee committed = @s committed
scoreboard players operation $melee vicious = @s vicious
scoreboard players operation $melee overload = @s overload
scoreboard players operation $melee stunning = @s stunning
scoreboard players operation $melee decay = @s decay

execute if score @s surging_strike matches 1.. positioned ~ ~1.2 ~ positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchant_effects/surging_strike/raycast

#Resets
execute if entity @s[scores={surging_strike=1..}] as @e[type=#cartographer_core:hostile,tag=thrusted,distance=..15] at @s run tag @s remove thrusted

scoreboard players set $melee ca.attack_val 0
scoreboard players set $melee fire_aspect 0
scoreboard players set $melee frostbite 0
scoreboard players set $melee committed 0
scoreboard players set $melee vicious 0
scoreboard players set $melee overload 0
scoreboard players set $melee stunning 0
scoreboard players set $melee decay 0

#Debug Message
tellraw @a[tag=debug,scores={surging_strike=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Surging Strike.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]