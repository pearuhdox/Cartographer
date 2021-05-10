execute if entity @s[scores={lifesteal=1,helper_kill=1..}] run scoreboard players set @s heal_queue 1

execute if entity @s[scores={lifesteal=2,helper_kill=1..}] run scoreboard players set @s heal_queue 2

execute if entity @s[scores={lifesteal=3,helper_kill=1..}] run scoreboard players set @s heal_queue 3

execute if entity @s[scores={lifesteal=4,helper_kill=1..}] run scoreboard players set @s heal_queue 4

execute if entity @s[scores={lifesteal=5..,helper_kill=1..}] run scoreboard players set @s heal_queue 5

execute if entity @s[scores={lifesteal=6,helper_kill=1..}] run effect give @s regeneration 2 1
execute if entity @s[scores={lifesteal=7,helper_kill=1..}] run effect give @s regeneration 3 1
execute if entity @s[scores={lifesteal=8,helper_kill=1..}] run effect give @s regeneration 4 1
execute if entity @s[scores={lifesteal=9,helper_kill=1..}] run effect give @s regeneration 5 1
execute if entity @s[scores={lifesteal=10,helper_kill=1..}] run effect give @s regeneration 7 1

execute if entity @s[scores={lifesteal=1..,helper_kill=1..}] run function cartographer_core:helper/heal_player/by_score
execute if entity @s[scores={lifesteal=1..,helper_kill=1..}] run playsound minecraft:entity.witch.drink player @a[distance=..8] ~ ~ ~ 0.5 2
execute if entity @s[scores={lifesteal=1..,helper_kill=1..}] run particle minecraft:heart ~ ~0.2 ~ 0.5 0.15 0.5 0 2 force

#Debug Message
tellraw @a[tag=debug,scores={lifesteal=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Lifesteal.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]