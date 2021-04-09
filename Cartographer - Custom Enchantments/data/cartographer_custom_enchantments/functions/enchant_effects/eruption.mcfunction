scoreboard players operation $eruption eruption = @s eruption

scoreboard players operation $eruption fire_aspect = @s fire_aspect
scoreboard players operation $eruption knockback = @s knockback
scoreboard players operation $eruption frostbite = @s frostbite
scoreboard players operation $eruption stunning = @s stunning
scoreboard players operation $eruption committed = @s committed
scoreboard players operation $eruption decay = @s decay
scoreboard players operation $eruption vicious = @s vicious
scoreboard players operation $eruption overload = @s overload

#Run branching on the xp orb here.
execute as @e[type=minecraft:experience_orb,limit=1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/eruption/branch

scoreboard players set $eruption eruption 0

scoreboard players set $eruption fire_aspect 0
scoreboard players set $eruption knockback 0
scoreboard players set $eruption frostbite 0
scoreboard players set $eruption stunning 0
scoreboard players set $eruption committed 0
scoreboard players set $eruption decay 0
scoreboard players set $eruption vicious 0
scoreboard players set $eruption overload 0

#Debug Message
tellraw @a[tag=debug,scores={echo=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Eruption.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]