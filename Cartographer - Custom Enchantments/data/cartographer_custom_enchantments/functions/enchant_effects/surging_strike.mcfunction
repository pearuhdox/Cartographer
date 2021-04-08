#Sfx and Vfx
execute if entity @s[scores={surging_strike=1..}] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 2
execute if entity @s[scores={surging_strike=1..}] run playsound minecraft:entity.zombie.infect player @s ~ ~ ~ 5 2

execute if entity @s[scores={surging_strike=1..}] run particle minecraft:cloud ^ ^1.5 ^1 0.2 0.2 0.2 0 1 normal
execute if entity @s[scores={surging_strike=1..}] run particle minecraft:cloud ^ ^1.5 ^2 0.2 0.2 0.2 0 1 normal
execute if entity @s[scores={surging_strike=1..}] run particle minecraft:cloud ^ ^1.5 ^3 0.2 0.2 0.2 0 2 normal
execute if entity @s[scores={surging_strike=1..}] run particle minecraft:cloud ^ ^1.5 ^4 0.2 0.2 0.2 0 3 normal
execute if entity @s[scores={surging_strike=1..,helper_sprint=1..}] run particle minecraft:cloud ^ ^1.5 ^5 0.2 0.2 0.2 0 4 normal
execute if entity @s[scores={surging_strike=1..,helper_sprint=1..}] run particle minecraft:cloud ^ ^1.5 ^6 0.2 0.2 0.2 0 5 normal
execute if entity @s[scores={surging_strike=1..,helper_sprint=1..}] run particle minecraft:cloud ^ ^1.5 ^7 0.2 0.2 0.2 0 6 normal

#While all attacks
execute as @s[scores={surging_strike=1..}] at @s positioned ^ ^1.5 ^1 run tag @e[type=#cartographer_core:hostile,distance=..1.5,nbt={HurtTime:0s}] add thrust_hit
execute as @s[scores={surging_strike=1..}] at @s positioned ^ ^1.5 ^2 run tag @e[type=#cartographer_core:hostile,distance=..1.5,nbt={HurtTime:0s}] add thrust_hit
execute as @s[scores={surging_strike=1..}] at @s positioned ^ ^1.5 ^3 run tag @e[type=#cartographer_core:hostile,distance=..1.5,nbt={HurtTime:0s}] add thrust_hit
execute as @s[scores={surging_strike=1..}] at @s positioned ^ ^1.5 ^4 run tag @e[type=#cartographer_core:hostile,distance=..1.5,nbt={HurtTime:0s}] add thrust_hit

#Only while sprinting
execute as @s[scores={surging_strike=1..,helper_sprint=1..}] at @s positioned ^ ^1.5 ^5 run tag @e[type=#cartographer_core:hostile,distance=..1.5,nbt={HurtTime:0s}] add thrust_hit
execute as @s[scores={surging_strike=1..,helper_sprint=1..}] at @s positioned ^ ^1.5 ^6 run tag @e[type=#cartographer_core:hostile,distance=..1.5,nbt={HurtTime:0s}] add thrust_hit
execute as @s[scores={surging_strike=1..,helper_sprint=1..}] at @s positioned ^ ^1.5 ^7 run tag @e[type=#cartographer_core:hostile,distance=..1.5,nbt={HurtTime:0s}] add thrust_hit

#Actual effects
execute store result score @s ca.attack_val run attribute @s minecraft:generic.attack_damage get

execute if entity @s[scores={surging_strike=1}] run scoreboard players operation @s ca.attack_val /= $custom_enchant.2 ca.CONSTANT

execute if entity @s[scores={surging_strike=2}] run scoreboard players operation @s ca.attack_val /= $custom_enchant.3 ca.CONSTANT
execute if entity @s[scores={surging_strike=2}] run scoreboard players operation @s ca.attack_val *= $custom_enchant.2 ca.CONSTANT

execute if entity @s[scores={surging_strike=3}] run scoreboard players operation @s ca.attack_val /= $custom_enchant.4 ca.CONSTANT
execute if entity @s[scores={surging_strike=3}] run scoreboard players operation @s ca.attack_val *= $custom_enchant.3 ca.CONSTANT
execute if entity @s[scores={surging_strike=3}] run scoreboard players add @s ca.attack_val 1

execute if entity @s[scores={surging_strike=1..}] at @s run scoreboard players operation @e[type=#cartographer_core:hostile,distance=..10,tag=thrust_hit] damage_queue = @s ca.attack_val

execute if entity @s[scores={surging_strike=1..}] at @s run execute as @e[type=#cartographer_core:hostile,distance=..10,tag=thrust_hit] at @s run function cartographer_core:helper/deal_damage/by_score

execute if entity @s[scores={surging_strike=1..}] at @s run execute as @e[type=#cartographer_core:hostile,distance=..10,tag=thrust_hit] at @s run function cartographer_core:helper/deal_damage/invulnerable_tick

execute if entity @s[scores={surging_strike=1..}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run tp @s ~ ~ ~ facing entity @p feet
execute if entity @s[scores={surging_strike=1..}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run function cartographer_core:helper/push_half

execute if entity @s[scores={surging_strike=1..,fire_aspect=1}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run data modify entity @s Fire set value 81
execute if entity @s[scores={surging_strike=1..,fire_aspect=2}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run data modify entity @s Fire set value 161
execute if entity @s[scores={surging_strike=1..,fire_aspect=3}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run data modify entity @s Fire set value 221

execute if entity @s[scores={surging_strike=1..,frostbite=1}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run effect give @s slowness 4 0
execute if entity @s[scores={surging_strike=1..,frostbite=2}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run effect give @s slowness 4 1
execute if entity @s[scores={surging_strike=1..,frostbite=3}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run effect give @s slowness 4 2
execute if entity @s[scores={surging_strike=1..,frostbite=4}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run effect give @s slowness 4 3
execute if entity @s[scores={surging_strike=1..,frostbite=5}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run effect give @s slowness 4 4

execute if entity @s[scores={surging_strike=1..,committed=1}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run effect give @s bad_omen 4 0
execute if entity @s[scores={surging_strike=1..,committed=2}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run effect give @s bad_omen 4 1
execute if entity @s[scores={surging_strike=1..,committed=3}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run effect give @s bad_omen 4 2

execute if entity @s[scores={surging_strike=1..,vicious=1..}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run scoreboard players add @s effect_bleed 0
execute if entity @s[scores={surging_strike=1..,vicious=1..}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10,scores={effect_bleed=1..}] at @s run scoreboard players add @s effect_bleed 11

execute if entity @s[scores={surging_strike=1..,vicious=1}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10,scores={effect_bleed=0}] at @s run scoreboard players set @s effect_bleed 3
execute if entity @s[scores={surging_strike=1..,vicious=2}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10,scores={effect_bleed=0}] at @s run scoreboard players set @s effect_bleed 5
execute if entity @s[scores={surging_strike=1..,vicious=3}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10,scores={effect_bleed=0}] at @s run scoreboard players set @s effect_bleed 7

execute if entity @s[scores={surging_strike=1..,overload=1}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run scoreboard players set @s effect_shocked 3
execute if entity @s[scores={surging_strike=1..,overload=2}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run scoreboard players set @s effect_shocked 5
execute if entity @s[scores={surging_strike=1..,overload=3}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run scoreboard players set @s effect_shocked 7

execute if entity @s[scores={surging_strike=1..,decay=1}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run scoreboard players set @s effect_infect 3
execute if entity @s[scores={surging_strike=1..,decay=2}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run scoreboard players set @s effect_infect 5
execute if entity @s[scores={surging_strike=1..,decay=3}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run scoreboard players set @s effect_infect 7

execute if entity @s[scores={surging_strike=1..,stunning=1..}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run function cartographer_core:helper/randomize
execute if entity @s[scores={surging_strike=1..,stunning=1..}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10] at @s run scoreboard players operation @s helper_melee = @s random

execute if entity @s[scores={surging_strike=1..,stunning=1}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10,scores={helper_melee=..10}] at @s run scoreboard players set @s effect_stunned 21
execute if entity @s[scores={surging_strike=1..,stunning=2}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10,scores={helper_melee=..20}] at @s run scoreboard players set @s effect_stunned 21
execute if entity @s[scores={surging_strike=1..,stunning=3}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10,scores={helper_melee=..30}] at @s run scoreboard players set @s effect_stunned 21
execute if entity @s[scores={surging_strike=1..,stunning=4}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10,scores={helper_melee=..40}] at @s run scoreboard players set @s effect_stunned 21
execute if entity @s[scores={surging_strike=1..,stunning=5}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,tag=thrust_hit,distance=..10,scores={helper_melee=..50}] at @s run scoreboard players set @s effect_stunned 21

execute if entity @s[scores={surging_strike=1..}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,distance=..15,tag=thrust_hit] at @s run tag @s remove thrust_hit


#Debug Message
tellraw @a[tag=debug,scores={surging_strike=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Surging Strike.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]