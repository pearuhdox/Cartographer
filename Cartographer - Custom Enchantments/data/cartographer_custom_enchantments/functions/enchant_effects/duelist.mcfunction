execute if entity @s[scores={duelist=1..}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.5 0.3 0.3 20 normal

execute if entity @s[scores={duelist=1}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players set @s damage_queue 2
execute if entity @s[scores={duelist=2}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players set @s damage_queue 5
execute if entity @s[scores={duelist=3}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players set @s damage_queue 7
execute if entity @s[scores={duelist=4}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players set @s damage_queue 10
execute if entity @s[scores={duelist=5}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players set @s damage_queue 12

execute if entity @s[scores={duelist=1..}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run function cartographer_core:helper/deal_damage/by_score

execute if entity @s[scores={duelist=1}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run function cartographer_core:helper/deal_damage/half
execute if entity @s[scores={duelist=3}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run function cartographer_core:helper/deal_damage/half
execute if entity @s[scores={duelist=5}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run function cartographer_core:helper/deal_damage/half

#Debug Message
tellraw @a[tag=debug,scores={duelist=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Duelist.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]