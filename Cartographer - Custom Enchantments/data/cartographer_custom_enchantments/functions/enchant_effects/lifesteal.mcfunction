execute if entity @s[scores={ca.lifesteal=1,ca.kill_entity=1..}] run scoreboard players set @s cdl.heal_queue 1

execute if entity @s[scores={ca.lifesteal=2,ca.kill_entity=1..}] run scoreboard players set @s cdl.heal_queue 2

execute if entity @s[scores={ca.lifesteal=3,ca.kill_entity=1..}] run scoreboard players set @s cdl.heal_queue 3

execute if entity @s[scores={ca.lifesteal=4,ca.kill_entity=1..}] run scoreboard players set @s cdl.heal_queue 4

execute if entity @s[scores={ca.lifesteal=5..,ca.kill_entity=1..}] run scoreboard players set @s cdl.heal_queue 5

execute if entity @s[scores={ca.lifesteal=6,ca.kill_entity=1..}] run effect give @s regeneration 2 1
execute if entity @s[scores={ca.lifesteal=7,ca.kill_entity=1..}] run effect give @s regeneration 3 1
execute if entity @s[scores={ca.lifesteal=8,ca.kill_entity=1..}] run effect give @s regeneration 4 1
execute if entity @s[scores={ca.lifesteal=9,ca.kill_entity=1..}] run effect give @s regeneration 5 1
execute if entity @s[scores={ca.lifesteal=10,ca.kill_entity=1..}] run effect give @s regeneration 7 1


execute if entity @s[scores={ca.lifesteal=1..,ca.kill_entity=1..}] run function cd:lib/player/heal
execute if entity @s[scores={ca.lifesteal=1..,ca.kill_entity=1..}] run playsound minecraft:entity.witch.drink player @a[distance=..8] ~ ~ ~ 0.5 2
execute if entity @s[scores={ca.lifesteal=1..,ca.kill_entity=1..}] run particle minecraft:heart ~ ~0.2 ~ 0.5 0.15 0.5 0 2 force

#Debug Message
tellraw @a[tag=debug,scores={ca.lifesteal=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Lifesteal.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]