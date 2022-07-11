scoreboard players operation $melee ca.singe = @s ca.singe

execute if score @s ca.singe matches 1.. as @e[type=#bb:fiery,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/singe/branch
execute if score @s ca.singe matches 1.. as @e[type=!#bb:fiery,distance=..5,nbt=!{HurtTime:0s},nbt=!{Fire:-1s}] at @s run function cartographer_custom_enchantments:enchant_effects/singe/branch

#Debug Message
tellraw @a[tag=debug,scores={ca.singe=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Singe.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]