scoreboard players operation $melee ca.first_strike = @s ca.first_strike

execute if entity @s[tag=can_crit] run scoreboard players set $critting ca.first_strike 1

execute if score @s ca.first_strike matches 1.. as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/first_strike/branch

scoreboard players set $melee ca.first_strike 0
scoreboard players set $critting ca.first_strike 0

tag @s add ca.used_first_strike
tag @s remove can_first_strike

#Debug Message
tellraw @a[tag=debug,scores={ca.first_strike=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used First Strike.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]