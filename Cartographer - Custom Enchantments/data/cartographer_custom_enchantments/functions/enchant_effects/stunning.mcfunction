scoreboard players set in math 1
scoreboard players set in1 math 100

function cartographer_core:helper/math/rng/range

scoreboard players operation $melee ca.melee_chance = out math
scoreboard players operation $melee ca.stunning = @s ca.stunning
scoreboard players operation $percent_stun ca.melee_chance = $melee ca.stunning
scoreboard players operation $percent_stun ca.melee_chance *= $10 ca.CONSTANT

execute as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/stunning/branch

#scoreboard players set $melee ca.melee_chance 0
scoreboard players set $melee ca.stunning 0

#Debug Message
tellraw @a[tag=debug,scores={ca.stunning=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Stunning.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]