execute if entity @s[scores={transfiguration=1..}] unless score @s tra_cool matches 1.. run function cartographer_core:helper/randomize

execute if entity @s[scores={transfiguration=1..}] unless score @s tra_cool matches 1.. run scoreboard players operation @s helper_melee -= @s tra_bias
execute if entity @s[scores={transfiguration=1..}] unless score @s tra_cool matches 1.. run scoreboard players set @s[scores={helper_melee=..0}] helper_melee 1

execute if entity @s[scores={transfiguration=1..}] unless score @s tra_cool matches 1.. run scoreboard players operation $melee helper_melee = @s random


scoreboard players operation $melee transfiguration = @s transfiguration

execute unless score @s tra_cool matches 1.. as @e[type=#cartographer_core:hostile,tag=!elite,tag=!boss,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/transfiguration/branch

#scoreboard players set $melee transfiguration 0

#Debug Message
tellraw @a[tag=debug,scores={transfiguration=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Transfiguration.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]