scoreboard players set $brittled ca.cauterize 0
scoreboard players set $other ca.cauterize 1

function cartographer_custom_enchantments:enchant_effects/cauterize/test_cauterize

execute if score $brittled ca.cauterize matches 1 as @s at @s run playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..12] ~ ~ ~ 1 0.5
execute if score $brittled ca.cauterize matches 1 as @s at @s run playsound minecraft:entity.zombie.infect hostile @a[distance=..12] ~ ~ ~ 1 0.5

#Debug Message
execute if score $brittled ca.cauterize matches 1 run tellraw @a[tag=debug,scores={ca.cauterize=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Cauterize (other) (triggered).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
execute if score $brittled ca.cauterize matches 0 run tellraw @a[tag=debug,scores={ca.cauterize=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Cauterize (other) (no trigger).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]

#Resets
scoreboard players set $brittled ca.cauterize 0
scoreboard players set $other ca.cauterize 0

tag @s[type=#cartographer_core:hostile,tag=is_cauterize] remove is_cauterize