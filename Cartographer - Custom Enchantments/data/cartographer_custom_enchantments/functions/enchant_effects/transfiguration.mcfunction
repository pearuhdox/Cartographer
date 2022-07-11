scoreboard players set in math 1
scoreboard players set in1 math 100

function cartographer_core:helper/math/rng/range

scoreboard players operation $melee ca.melee_chance = out math

scoreboard players operation $melee ca.melee_chance -= @s ca.trans_bias
execute if score $melee ca.melee_chance matches ..0 run scoreboard players set $melee ca.melee_chance 1

scoreboard players operation $melee ca.transfig = @s ca.transfig

execute unless score @s ca.trans_cdl matches 1.. unless score @s ca.trans_cdl matches 1.. as @e[type=#bb:hostile,tag=!elite,tag=!boss,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/transfiguration/branch

scoreboard players set $melee ca.transfig 0

#Debug Message
tellraw @a[tag=debug,scores={ca.transfig=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Transfiguration.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]