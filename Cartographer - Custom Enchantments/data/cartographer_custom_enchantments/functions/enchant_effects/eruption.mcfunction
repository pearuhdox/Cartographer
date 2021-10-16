scoreboard players operation $eruption ca.eruption = @s ca.eruption

scoreboard players operation $eruption ca.cauterize = @s ca.cauterize
scoreboard players operation $eruption ca.fire_aspect = @s ca.fire_aspect
scoreboard players operation $eruption ca.knockback = @s ca.knockback
scoreboard players operation $eruption ca.frostbite = @s ca.frostbite
scoreboard players operation $eruption ca.stunning = @s ca.stunning
scoreboard players operation $eruption ca.exposing = @s ca.exposing
scoreboard players operation $eruption ca.infection = @s ca.infection
scoreboard players operation $eruption ca.bleeding = @s ca.bleeding
scoreboard players operation $eruption ca.electrocute = @s ca.electrocute
scoreboard players operation $eruption ca.possession = @s ca.possession

#Run branching on the xp orb here.
execute as @e[type=minecraft:experience_orb,limit=1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/eruption/branch

#If no xp orb, approximate instead
execute unless entity @e[type=minecraft:experience_orb,limit=1,sort=nearest,distance=..6] as @s positioned ^ ^ ^3 run function cartographer_custom_enchantments:enchant_effects/eruption/recursion

scoreboard players set $eruption ca.eruption 0

scoreboard players set $eruption ca.cauterize 0
scoreboard players set $eruption ca.fire_aspect 0
scoreboard players set $eruption ca.knockback 0
scoreboard players set $eruption ca.frostbite 0
scoreboard players set $eruption ca.stunning 0
scoreboard players set $eruption ca.exposing 0
scoreboard players set $eruption ca.infection 0
scoreboard players set $eruption ca.bleeding 0
scoreboard players set $eruption ca.electrocute 0
scoreboard players set $eruption ca.possession 0

#Debug Message
tellraw @a[tag=debug,scores={ca.eruption=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Eruption.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]