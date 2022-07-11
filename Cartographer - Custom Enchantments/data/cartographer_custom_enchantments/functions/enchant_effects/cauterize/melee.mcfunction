scoreboard players set $brittled ca.cauterize 0
scoreboard players set $melee ca.cauterize 1

execute if score @s ca.cauterize matches 1.. as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/cauterize/test_cauterize

execute if score $brittled ca.cauterize matches 1 as @s at @s run playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..12] ~ ~ ~ 1 0.5
execute if score $brittled ca.cauterize matches 1 as @s at @s run playsound minecraft:entity.zombie.infect hostile @a[distance=..12] ~ ~ ~ 1 0.5


#Debug Message
execute if score $brittled ca.cauterize matches 1 run tellraw @a[tag=debug,scores={ca.cauterize=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Cauterize (triggered).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
execute if score $brittled ca.cauterize matches 0 run tellraw @a[tag=debug,scores={ca.cauterize=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Cauterize (no trigger).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]

scoreboard players set $brittled ca.cauterize 0

scoreboard players set $melee ca.cauterize 0